# frozen_string_literal: true

class Ui::Card::Header::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default(title: "Hello, World!")
    render_with(title:)
  end
end
