# frozen_string_literal: true

class Ui::Form::Field::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param field_type select { choices: [text, email, password, date, datetime] }
  # @param required toggle "Required flag"
  # @param disabled toggle "Disabled flag"
  # @param placeholder text "Placeholder text"
  def default(field_type: "text", placeholder: "placeholder text", required: false, disabled: false)
    html_options = { placeholder: placeholder, required: required, disabled: disabled }
    render_with(field_type: field_type, html_options: html_options)
  end
end
