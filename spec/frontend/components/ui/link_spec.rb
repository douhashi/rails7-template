# frozen_string_literal: true

require "rails_helper"

describe Ui::Link::Component do
  let(:url) { "https://www.google.com" }
  let(:text) { "Google" }
  let(:options) { { url: url, text: text } }
  let(:component) { Ui::Link::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "a[href='#{url}']", text: text
  end
end
