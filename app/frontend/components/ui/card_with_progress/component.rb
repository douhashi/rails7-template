# frozen_string_literal: true

class Ui::CardWithProgress::Component < ApplicationViewComponent
  option :percentage, default: -> { 0 }
  option :color

  def progress_bar_color
    case color
    when "green"
      "bg-green-400"
    when "yellow"
      "bg-yellow-400"
    when "red"
      "bg-red-400"
    else
      "bg-gray-400"
    end
  end

  def progress_bar_width
    case percentage
    when 0..10 then  "w-[10%]"
    when 11..20 then "w-[20%]"
    when 21..30 then "w-[30%]"
    when 31..40 then "w-[40%]"
    when 41..50 then "w-[50%]"
    when 51..60 then "w-[60%]"
    when 61..70 then "w-[70%]"
    when 71..80 then "w-[80%]"
    when 81..90 then "w-[90%]"
    when 91..100 then "w-full"
    else
      "w-0"
    end
  end
end
