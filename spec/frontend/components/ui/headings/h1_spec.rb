# frozen_string_literal: true

require "rails_helper"

describe Ui::Headings::H1::Component do
  let(:title) { "Hello, World!" }
  let(:options) { { title: title } }
  let(:component) { Ui::Headings::H1::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "h1"
  end
end
