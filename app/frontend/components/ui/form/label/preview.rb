# frozen_string_literal: true

class Ui::Form::Label::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param required toggle "Required flag"
  def default(required: false)
    options = { required: required }
    render_with(options: options)
  end
end
