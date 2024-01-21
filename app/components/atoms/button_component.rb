# frozen_string_literal: true

class Atoms::ButtonComponent < Atoms::Base
  def set_default_params
    @color ||= 'primary'
    @size  ||= 'base'
  end

  def dynamic_classes
    [bg_color_class, text_color_class, padding_class].compact.join(' ')
  end
end
