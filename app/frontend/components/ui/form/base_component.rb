# frozen_string_literal: true

class Ui::Form::BaseComponent < ApplicationViewComponent
  option :form
  option :method
  option :options, default: -> { {} }
  option :html_options, default: -> { {} }

  def base_css
    "rounded-lg border-transparent flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-gray-300 focus:border-transparent"
  end

  def disabled_css
    "opacity-80 pointer-events-none"
  end
end


