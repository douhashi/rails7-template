# frozen_string_literal: true

class Ui::FlashMessage::Component < ApplicationViewComponent
  option :flash

  def flash_type_color(type)
    case type.to_s
    when 'notice'
      'bg-green-100 text-green-700 dark:bg-green-700 dark:text-white'
    when 'alert'
      'bg-red-100 text-red-700 dark:bg-red-700 dark:text-white'
    else
      'bg-blue-100 text-blue-700 dark:bg-blue-700 dark:text-white'
    end
  end

  def render?
    flash.present?
  end
end
