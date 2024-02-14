# frozen_string_literal: true

class Ui::Form::Select::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param multiple toggle "Multiple flag"
  # @param include_blank text "Blank text"
  # @param prompt text "Prompt text"
  # @param required toggle "Required flag"
  # @param disabled toggle "Disabled flag"
  def default(multiple: false, include_blank: nil, prompt: nil, required: false, disabled: false)
    options = { multiple: multiple, include_blank: include_blank, prompt: prompt }
    html_options = { required: required, disabled: disabled }

    render_with(options: options, html_options: html_options)
  end
end
