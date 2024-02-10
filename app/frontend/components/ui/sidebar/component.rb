# frozen_string_literal: true

class Ui::Sidebar::Component < ApplicationViewComponent
  renders_one :brand
  renders_many :nav_items
end
