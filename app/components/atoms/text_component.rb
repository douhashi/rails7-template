# frozen_string_literal: true

class Atoms::TextComponent < Atoms::Base
  def initialize(color: 'primary', size: 'base', font: 'Noto Sans JP', weight: 'normal')
    @color     = color
    @size      = size
    @font      = font
    @weight    = weight
  end

  def dynamic_classes
    [text_color_class, text_size_class, font_name_class, font_weight_class].compact.join(' ')
  end

  def text_color_class
    case @color
    when 'primary'
      'text-on-primary'
    when 'secondary'
      'text-on-secondary'
    when 'surface'
      'text-on-surface'
    end
  end

  def text_size_class
    case @size
    when 'xs'
      'text-xs'
    when 'sm'
      'text-sm'
    when 'base'
      'text-base'
    when 'lg'
      'text-lg'
    when 'xl'
      'text-xl'
    when '2xl'
      'text-2xl'
    when '3xl'
      'text-3xl'
    when '4xl'
      'text-4xl'
    when '5xl'
      'text-5xl'
    when '6xl'
      'text-6xl'
    when '7xl'
      'text-7xl'
    when '8xl'
      'text-8xl'
    when '9xl'
      'text-9xl'
    end
  end

  def font_name_class
    case @font_name
    when 'Inter'
      'font-[Inter]'
    else
      ''
    end
  end

  def font_weight_class
    case @weight
    when 'thin'
      'font-thin'
    when 'extralight'
      'font-extralight'
    when 'light'
      'font-light'
    when 'normal'
      'font-normal'
    when 'medium'
      'font-medium'
    when 'semibold'
      'font-semibold'
    when 'bold'
      'font-bold'
    when 'extrabold'
      'font-extrabold'
    when 'black'
      'font-black'
    end
  end
end
