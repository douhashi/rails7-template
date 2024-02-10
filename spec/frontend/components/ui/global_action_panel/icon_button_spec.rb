# frozen_string_literal: true

require "rails_helper"

describe Ui::GlobalActionPanel::IconButton::Component do
  let(:icon) { "fa-plus" }
  let(:url) { "#" }
  let(:options) { { icon: icon, url: url } }
  let(:component) { Ui::GlobalActionPanel::IconButton::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css("i.fa-plus")
  end
end
