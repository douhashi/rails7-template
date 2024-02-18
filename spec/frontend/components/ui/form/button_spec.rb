# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::Button::Component do
  let(:label) { "Button" }
  let(:button_type) { "submit" }
  let(:options) { { label: label, button_type: button_type } }
  let(:component) { Ui::Form::Button::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "button[type='#{button_type}']", text: label
  end
end
