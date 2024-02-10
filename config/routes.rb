Rails.application.routes.draw do
  if Rails.application.config.lookbook_enabled
    mount Lookbook::Engine, at: "/dev/lookbook"
  end

  root 'sample#index'
end
