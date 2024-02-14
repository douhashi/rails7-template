# frozen_string_literal: true

class Ui::Form::RadioButton::Component < Ui::Form::BaseComponent
  option :value

  def css_classes
    "#{base_css} #{disable_outline_css}"
  end

  def base_css
    'w-5 h-5 text-indigo-600'
  end
end
