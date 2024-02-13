# frozen_string_literal: true

class Ui::Form::TextField::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param required toggle "Required flag"
  # @param disabled toggle "Disabled flag"
  # @param placeholder text "Placeholder text"
  def default(placeholder: "placeholder text", required: false, disabled: false)
    html_options = { placeholder: placeholder, required: required, disabled: disabled }
    render_with(html_options: html_options)
  end
end
