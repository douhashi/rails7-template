# frozen_string_literal: true

class Ui::CardWithProgress::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default(percentage: 50, color: "green")
    render_with(percentage: percentage, color: color)
  end
end
