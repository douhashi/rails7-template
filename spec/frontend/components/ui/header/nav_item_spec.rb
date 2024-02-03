# frozen_string_literal: true

require "rails_helper"

describe Ui::Header::NavItem::Component do
  let(:name) { "Google" }
  let(:url) { "https://www.google.com" }
  let(:options) { { name: name, url: url } }
  let(:component) { Ui::Header::NavItem::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to include name
  end
end
