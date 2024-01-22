# frozen_string_literal: true

class Atoms::ButtonComponent < Atoms::Base
  def initialize(color: 'primary', size: 'base')
    @color = color
    @size  = size
  end

  def bg_color_class
    case @color
    when 'primary'
      'bg-primary-500 hover:bg-primary-700'
    when 'secondary'
      'bg-secondary-600 hover:bg-secondary-800'
    end
  end

  def hover_class
    case @color
    when 'primary'
      'hover:bg-primary-700'
    when 'secondary'
      'hover:bg-secondary-800'
    end
  end

  def dynamic_classes
    [bg_color_class, hover_class].compact.join(' ')
  end
end
