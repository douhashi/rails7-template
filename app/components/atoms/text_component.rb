# frozen_string_literal: true

class Atoms::TextComponent < Atoms::Base
  def dynamic_classes
    [text_color_class, size_class].compact.join(' ')
  end
end
