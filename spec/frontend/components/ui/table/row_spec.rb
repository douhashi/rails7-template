# frozen_string_literal: true

require "rails_helper"

describe Ui::Table::Row::Component do
  let(:options) { {} }
  let(:component) { Ui::Table::Row::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "tr"
  end
end
