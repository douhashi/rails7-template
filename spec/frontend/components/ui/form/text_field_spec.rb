# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::TextField::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :field_name }
  let(:options) { { form: form, method: method } }
  let(:component) { Ui::Form::TextField::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "input[type='text']"
  end
end
