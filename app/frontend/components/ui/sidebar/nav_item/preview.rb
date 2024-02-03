# frozen_string_literal: true

class Ui::Sidebar::NavItem::Preview < ApplicationViewComponentPreview
  def default(name: 'Nav Item', url: '#', icon: 'fa-home', active: false)
    render_with(name:, url:, icon:, active:)
  end
end
