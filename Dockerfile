# Install node modules stage
FROM node:20.11.0-slim as node-builder

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

# Install gems stage
FROM ruby:3.2.3-slim as ruby-builder

RUN apt-get update && \
  apt-get install -y build-essential libpq-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN gem install bundler && \
  bundle config set path /usr/local/bundle && \
  bundle install -j4

# Final stage
FROM ruby:3.2.3-slim
ARG UID
ARG GID

## set environment variables and working directory
ENV ROOT=/home/nonroot
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo
ENV APP_PATH=${ROOT}/app
ENV BUNDLE_PATH=${ROOT}/.bundle
WORKDIR ${APP_PATH}

# Install system dependencies
RUN apt-get update && \
  apt-get install -y sudo libpq-dev curl && \
  addgroup --gid $GID nonroot && \
  adduser --uid $UID --gid $GID --disabled-password --gecos "" nonroot && \
  echo 'nonroot ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

## Install nodejs from node:20.11.0-slim
COPY --from=node-builder /usr/local/bin/node /usr/local/bin/
COPY --from=node-builder /usr/local/lib/node_modules /usr/local/lib/node_modules
RUN ln -fs /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm && \
  ln -fs /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx

USER nonroot

RUN sudo mkdir -p ${BUNDLE_PATH} && \
  sudo chown -R nonroot:nonroot ${ROOT} && \
  bundle config set path ${BUNDLE_PATH} && \
  bundle config set bin ${BUNDLE_PATH}/bin

COPY --chown=nonroot:nonroot Gemfile ${APP_PATH}/Gemfile
COPY --chown=nonroot:nonroot Gemfile.lock ${APP_PATH}/Gemfile.lock

# copy gems from previous stage
COPY --from=ruby-builder --chown=nonroot:nonroot /usr/local/bundle ${BUNDLE_PATH}
RUN bundle install -j4

COPY --chown=nonroot:nonroot package.json ${APP_PATH}/package.json
COPY --chown=nonroot:nonroot package-lock.json ${APP_PATH}/package-lock.json
RUN npm install

COPY --chown=nonroot:nonroot . ${ROOT}

COPY --chown=nonroot:nonroot ./docker/entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 3000
ENTRYPOINT ["entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]


