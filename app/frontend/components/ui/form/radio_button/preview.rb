# frozen_string_literal: true

class Ui::Form::RadioButton::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param checked toggle "checked flag"
  # @param required toggle "Required flag"
  # @param disabled toggle "Disabled flag"
  def default(checked: false, required: false, disabled: false)
    html_options = { checked: checked, required: required, disabled: disabled }

    render_with(html_options: html_options)
  end
end
