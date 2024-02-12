# frozen_string_literal: true

class Ui::Form::TextField::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param placeholder text "Placeholder text"
  # @param required toggle "Required flag"
  def default(placeholder: "placeholder text", required: false)
    render_with(placeholder:, required:)
  end
end
