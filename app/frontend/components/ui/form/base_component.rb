# frozen_string_literal: true

class Ui::Form::BaseComponent < ApplicationViewComponent
  option :form
  option :method
  option :options, default: -> { {} }
  option :html_options, default: -> { {} }

  def base_css
    "rounded-lg border-transparent flex-1 border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base #{disable_outline_css}"
  end

  def disable_outline_css
    "appearance-none focus:outline-none focus:ring-0 focus:ring-offset-0 focus:border-gray-300"
  end

  def disabled_css
    "opacity-80 pointer-events-none"
  end
end


