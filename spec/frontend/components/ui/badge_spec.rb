# frozen_string_literal: true

require "rails_helper"

describe Ui::Badge::Component do
  let(:options) { {} }
  let(:component) { Ui::Badge::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to include "span"
  end
end
