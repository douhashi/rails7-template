# frozen_string_literal: true

class Atoms::TextComponent < Atoms::Base
  def initialize(color: 'primary', size: 'base')
    @color = color
    @size  = size
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

  def dynamic_classes
    [text_color_class, text_size_class].compact.join(' ')
  end
end
