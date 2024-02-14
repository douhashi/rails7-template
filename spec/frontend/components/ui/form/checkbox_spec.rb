# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::Checkbox::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :checkbox_field }
  let(:options) { { form: form, method: method } }
  let(:component) { Ui::Form::Checkbox::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "input[type='checkbox']"
  end
end
