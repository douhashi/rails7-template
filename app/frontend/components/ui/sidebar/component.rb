# frozen_string_literal: true

class Ui::Sidebar::Component < ApplicationViewComponent
  renders_one :brand, Ui::Sidebar::Brand::Component
  renders_many :nav_items, Ui::Sidebar::NavItem::Component
end
