# frozen_string_literal: true

class Ui::Sidebar::NavItem::Component < ApplicationViewComponent
  option :name
  option :url
  option :icon
  option :active, default: proc { false }
end
