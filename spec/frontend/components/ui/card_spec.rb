# frozen_string_literal: true

require "rails_helper"

describe Ui::Card::Component do
  let(:options) { {} }
  let(:component) { Ui::Card::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to include "div"
  end
end
