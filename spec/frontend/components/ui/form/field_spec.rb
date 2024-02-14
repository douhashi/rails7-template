# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::Field::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :field_name }
  let(:field_type) { :text }
  let(:options) { { form: form, method: method, field_type: field_type } }
  let(:component) { Ui::Form::Field::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "input[type='#{field_type}']"
  end
end
