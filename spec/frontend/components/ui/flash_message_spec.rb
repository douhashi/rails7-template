# frozen_string_literal: true

require "rails_helper"

describe Ui::FlashMessage::Component do
  let(:flash) { { notice: "This is a notice" } }
  let(:options) { { flash: flash } }
  let(:component) { Ui::FlashMessage::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "div"
  end
end
