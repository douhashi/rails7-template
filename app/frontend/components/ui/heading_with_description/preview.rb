# frozen_string_literal: true

class Ui::HeadingWithDescription::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default(title: 'Title', description: 'Description text')
    render_with(title:, description:)
  end
end
