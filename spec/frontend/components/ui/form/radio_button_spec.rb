# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::RadioButton::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :field_name }
  let(:value) { "value" }
  let(:options) { { form: form, method: method, value: value } }
  let(:component) { Ui::Form::RadioButton::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "input[type='radio']"
  end
end
