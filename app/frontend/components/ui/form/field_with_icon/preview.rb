# frozen_string_literal: true

class Ui::Form::FieldWithIcon::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param field_type select { choices: [text_field, email_field, password_field, date_field, datetime_field] }
  # @param icon text "Icon class"
  # @param required toggle "Required flag"
  # @param disabled toggle "Disabled flag"
  # @param placeholder text "Placeholder text"
  def default(field_type: "text_field", icon: "fas fa-user", placeholder: "placeholder text", required: false, disabled: false)
    html_options = { placeholder: placeholder, required: required, disabled: disabled }
    render_with(icon: icon, field_type: field_type, html_options: html_options)
  end
end
