# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::FieldWithIcon::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :field_name }
  let(:icon) { "fa-user" }
  let(:field_type) { :text }
  let(:options) { { form: form, method: method, icon: icon, field_type: field_type } }
  let(:component) { Ui::Form::FieldWithIcon::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "div"
  end
end
