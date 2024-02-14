# frozen_string_literal: true

class Ui::Badge::Component < ApplicationViewComponent
  option :color, default: -> { "primary" }
  option :size, default: -> { "xs" }

  def css_classes
    "#{base_css} #{color_css} #{size_css} px-2 py-1"
  end

  def base_css
    "border-2 font-semibold rounded-full"
  end

  def color_css
    case color
    when "primary"
      "text-white bg-indigo-600 border-indigo-600 dark:bg-indigo-500 dark:border-indigo-500"
    when "secondary"
      "text-indigo-600 border-indigo-600 dark:text-indigo-400 dark:border-indigo-400"
    when "teritary"
      "text-gray-600 border-gray-600 dark:text-gray-400 dark:border-gray-400"
    when "destructive"
      "text-red-600 border-red-600 dark:text-red-500 dark:border-red-500"
    end
  end

  def size_css
    case size
    when "xs"
      "text-xs"
    when "sm"
      "text-sm"
    when "base"
      "text-base"
    when "lg"
      "text-lg"
    when "xl"
      "text-xl"
    end
  end
end
