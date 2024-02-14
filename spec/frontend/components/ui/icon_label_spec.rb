# frozen_string_literal: true

require "rails_helper"

describe Ui::IconLabel::Component do
  let(:icon) { "fa-home" }
  let(:label) { "Home" }
  let(:options) { { icon: icon, label: label } }
  let(:component) { Ui::IconLabel::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "i", class: icon
    is_expected.to have_css "span", text: label
  end
end
