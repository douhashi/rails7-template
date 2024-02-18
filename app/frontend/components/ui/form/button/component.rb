# frozen_string_literal: true

class Ui::Form::Button::Component < ApplicationViewComponent
  option :label, optional: true
  option :icon,  optional: true
  option :style, default: -> { 'primary' }
  option :size,  default: -> { 'base' }
  option :wide,  default: -> { false }
  option :button_type, default: -> { 'submit' }

  def css_classes
    "#{base_css} #{color_css} #{size_css} #{wide_css} #{padding_css}"
  end

  private

  def base_css
    "inline-flex justify-center items-center space-x-2 border-2 transition ease-in duration-200 shadow-md rounded-md"
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
      bg_color     = "hover:bg-gray-600 dark:hover:bg-gray-500"
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
      "text-xs font-normal"
    when 'sm'
      "text-sm font-normal"
    when 'base'
      "text-base font-normal"
    when 'lg'
      "text-lg font-normal"
    when 'xl'
      "text-xl font-semibold"
    end
  end

  def padding_css
    case size
    when 'xs'
      "py-1 px-1"
    when 'sm', 'base', 'lg'
      "py-1 px-2"
    when 'xl'
      "py-2 px-4"
    end
  end

  def wide_css
    "w-full" if wide
  end
end
