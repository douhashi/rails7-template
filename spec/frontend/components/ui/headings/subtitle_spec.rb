# frozen_string_literal: true

require "rails_helper"

describe Ui::Headings::Subtitle::Component do
  let(:text) { "Subtitle text" }
  let(:options) { { text: text } }
  let(:component) { Ui::Headings::Subtitle::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "span"
  end

  context 'when text is not present' do
    let(:text) { nil }

    it "does not render" do
      render_inline(component)

      is_expected.to be_blank
    end
  end
end
