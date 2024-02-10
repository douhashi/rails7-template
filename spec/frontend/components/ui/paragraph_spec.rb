# frozen_string_literal: true

require "rails_helper"

describe Ui::Paragraph::Component do
  let(:content) { "Hello, World!" }
  let(:options) { {} }
  let(:component) { Ui::Paragraph::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component) do
      content
    end

    is_expected.to have_css "span"
    is_expected.to have_text content
  end
end
