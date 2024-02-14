# frozen_string_literal: true

class Ui::Headings::Subtitle::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param text text "Text of the subtitle"
  def default(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
    render_with(text: text)
  end
end
