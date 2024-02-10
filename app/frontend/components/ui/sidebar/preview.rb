# frozen_string_literal: true

class Ui::Sidebar::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    render_with(menu_items: menu_items)
  end

  private

  def menu_items
    [
      { name: 'Nav Item 1', url: '#', icon: 'fa-house', active: true  },
      { name: 'Nav Item 2', url: '#', icon: 'fa-house', active: false },
      { name: 'Nav Item 3', url: '#', icon: 'fa-house', active: false }
    ]
  end
end
