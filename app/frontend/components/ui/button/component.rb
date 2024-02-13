# frozen_string_literal: true

class Ui::Button::Component < ApplicationViewComponent
  option :label, default: -> { 'Button' }
  option :style, default: -> { 'primary' }
  option :size,  default: -> { 'base' }

  def css_classes
    "#{base_css} #{color_css} #{size_css}"
  end

  private

  def base_css
    "border-2 transition ease-in duration-200 text-center shadow-md rounded-md"
  end

  def color_css
    case style
    when 'primary'
      text_color   = "text-white"
      bg_color     = "bg-indigo-600 hover:bg-indigo-500"
      border_color = "border-indigo-600 hover:border-indigo-500"
    when 'secondary'
      text_color   = "text-indigo-600 hover:text-white dark:text-indigo-500 dark:hover:text-white"
      bg_color     = "hover:bg-indigo-500 dark:hover:bg-indigo-500"
      border_color = "border-indigo-600 dark:border-indigo-500"
    when 'teritary'
      text_color   = "text-gray-600 hover:text-white dark:text-gray-500 dark:hover:text-white"
      bg_color     = "hover:bg-gray-500 dark:hover:bg-gray-500"
      border_color = "border-gray-600 dark:border-gray-500"
    when 'destructive'
      text_color   = "text-red-600 hover:text-white dark:text-red-500 dark:hover:text-white"
      bg_color     = "hover:bg-red-500 dark:hover:bg-red-500"
      border_color = "border-red-600 dark:border-red-500"
    end

    "#{text_color} #{bg_color} #{border_color}"
  end

  def size_css
    case size
    when 'xs'
      "py-1 px-1 text-xs font-normal"
    when 'sm'
      "py-1 px-2 text-sm font-normal"
    when 'base'
      "py-1 px-2 text-base font-normal"
    when 'lg'
      "py-1 px-2 text-lg font-normal"
    when 'xl'
      "py-2 px-4 text-xl font-semibold"
    end
  end
end
