# frozen_string_literal: true

require "rails_helper"

describe Ui::LinkButton::Component do
  let(:label) { "Click me" }
  let(:url) { "https://www.example.com" }
  let(:options) { { label: label, url: url } }
  let(:component) { Ui::LinkButton::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "a[href='#{url}']", text: label
  end
end
