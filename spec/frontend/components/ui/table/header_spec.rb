# frozen_string_literal: true

require "rails_helper"

describe Ui::Table::Header::Component do
  let(:options) { {} }
  let(:component) { Ui::Table::Header::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "thead"
  end
end
