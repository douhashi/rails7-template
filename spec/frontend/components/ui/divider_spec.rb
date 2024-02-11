# frozen_string_literal: true

require "rails_helper"

describe Ui::Divider::Component do
  let(:options) { {} }
  let(:component) { Ui::Divider::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "div"
  end
end
