# frozen_string_literal: true

class Ui::Form::FieldWithIcon::Component < Ui::Form::BaseComponent
  option :icon
  option :field_type

  def base_css
    "rounded-r-lg flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-gray-300 focus:border-transparent"
  end
end
