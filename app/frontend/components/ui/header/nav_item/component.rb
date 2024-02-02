# frozen_string_literal: true

class Ui::Header::NavItem::Component < ApplicationViewComponent
  option :name
  option :url
  option :active, default: proc { false }
  option :style, default: proc { :pc }

  def active?
    active
  end

  def text_color
    active? ? 'text-gray-800 dark:text-white' : 'text-gray-300 hover:text-gray-800 dark:hover:text-white'
  end

  def style_class
    case style.to_sym
    when :pc
      'text-sm'
    when :sp
      'text-base block'
    end
  end
end
