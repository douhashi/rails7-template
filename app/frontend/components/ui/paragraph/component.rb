# frozen_string_literal: true

class Ui::Paragraph::Component < ApplicationViewComponent
  option :size, default: -> { 'base' }
  option :weight, default: -> { 'normal' }

  def css_classes
    "#{base_css} #{size_css} #{weight_css}"
  end

  def base_css
    "text-gray-700 dark:text-white"
  end

  def size_css
    case size
    when 'xs'
      "text-xs"
    when 'sm'
      "text-sm"
    when 'base'
      "text-base"
    when 'lg'
      "text-lg"
    when 'xl'
      "text-xl"
    end
  end

  def weight_css
    case weight
    when 'thin'
      "font-thin"
    when 'light'
      "font-light"
    when 'normal'
      "font-normal"
    when 'semibold'
      "font-semibold"
    when 'bold'
      "font-bold"
    end
  end
end
