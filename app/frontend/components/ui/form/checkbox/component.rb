# frozen_string_literal: true

class Ui::Form::Checkbox::Component < Ui::Form::BaseComponent
  def css_classes
    "#{base_css} #{color_css} #{disable_outline_css}"
  end

  def base_css
    "h-6 w-6 border border-gray-300 rounded-md bg-white #{disable_outline_css}"
  end

  def color_css
    "checked:bg-indigo-500 checked:hover:bg-indigo-500 focus:checked:bg-indigo-500"
  end
end
