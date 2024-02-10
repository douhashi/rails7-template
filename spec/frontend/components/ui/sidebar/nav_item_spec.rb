# frozen_string_literal: true

require "rails_helper"

describe Ui::Sidebar::NavItem::Component do
  let(:name) { 'Navigation Item 1' }
  let(:url) { '/nav-item-1' }
  let(:icon) { 'fa-home' }

  let(:options) { { name: name, url: url, icon: icon } }
  let(:component) { Ui::Sidebar::NavItem::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_text name
  end
end
