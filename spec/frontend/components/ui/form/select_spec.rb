# frozen_string_literal: true

require "rails_helper"

describe Ui::Form::Select::Component do
  let(:form) { dummy_form_builder }
  let(:method) { :field_name }
  let(:selections) { %w[one two three] }
  let(:options) { { form: form, method: method, selections: selections } }
  let(:component) { Ui::Form::Select::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "div"
  end
end
