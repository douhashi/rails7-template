# frozen_string_literal: true

require "rails_helper"

describe Ui::Table::Th::Component do
  let(:options) { {} }
  let(:component) { Ui::Table::Th::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "th"
  end
end
