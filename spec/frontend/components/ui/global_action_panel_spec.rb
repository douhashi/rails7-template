# frozen_string_literal: true

require "rails_helper"

describe Ui::GlobalActionPanel::Component do
  let(:options) { {} }
  let(:component) { Ui::GlobalActionPanel::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "header"
  end
end
