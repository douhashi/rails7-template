# frozen_string_literal: true

class Ui::Paragraph::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param content text "Content text"
  def default(content: "This is a paragraph")
    render_with(content: content)
  end
end
