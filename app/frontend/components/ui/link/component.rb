# frozen_string_literal: true

class Ui::Link::Component < ApplicationViewComponent
  option :url
  option :text, default: -> { nil }
  option :size, default: -> { nil }
  option :weight, default: -> { nil }
  option :options, default: -> { {} }

  def css_classes
    "#{base_css} #{animation_css} #{color_css} #{size_css} #{weight_css}"
  end

  def base_css
    "underline underline-offset-2 decoration-1 px-1"
  end

  def animation_css
    "transition duration-200 ease-in"
  end

  def color_css
    "text-gray-700 hover:text-gray-400 dark:text-white dark:hover:text-gray-400"
  end

  def size_css
    return if size.blank?

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

  def weight_css
    return if weight.blank?

    case weight
    when "thin"
      "font-thin"
    when "light"
      "font-light"
    when "normal"
      "font-normal"
    when "medium"
      "font-medium"
    when "semibold"
      "font-semibold"
    when "bold"
      "font-bold"
    end
  end
end
