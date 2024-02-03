# frozen_string_literal: true

require "rails_helper"

describe Ui::CardWithProgress::Component do
  let(:percentage) { 50 }
  let(:color) { "green" }
  let(:options) { { percentage: percentage, color: color } }
  let(:component) { Ui::CardWithProgress::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css ".bg-green-400"
  end
end
