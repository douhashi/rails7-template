# frozen_string_literal: true

require "rails_helper"

describe Ui::Table::Caption::Component do
  let(:options) { {} }
  let(:component) { Ui::Table::Caption::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "caption"
  end
end
