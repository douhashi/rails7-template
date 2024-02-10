# frozen_string_literal: true

require "rails_helper"

describe Ui::Table::Tbody::Component do
  let(:options) { {} }
  let(:component) { Ui::Table::Tbody::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "tbody"
  end
end
