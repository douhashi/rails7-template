# frozen_string_literal: true

require "rails_helper"

describe Ui::Button::Component do
  let(:label) { "Click me" }
  let(:options) { { label: label } }
  let(:component) { Ui::Button::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "button", text: label
  end
end
