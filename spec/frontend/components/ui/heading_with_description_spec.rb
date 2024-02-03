# frozen_string_literal: true

require "rails_helper"

describe Ui::HeadingWithDescription::Component do
  let(:options) { {} }
  let(:component) { Ui::HeadingWithDescription::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to include "div"
  end
end
