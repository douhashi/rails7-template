# frozen_string_literal: true

require "rails_helper"

describe Ui::HeadingWithDescription::Component do
  let(:title) { "Hello, world!" }
  let(:description) { "This is a description" }
  let(:options) { { title: title, description: description } }
  let(:component) { Ui::HeadingWithDescription::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_text title
    is_expected.to have_text description
  end
end
