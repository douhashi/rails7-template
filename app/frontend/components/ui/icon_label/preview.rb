# frozen_string_literal: true

class Ui::IconLabel::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param icon
  # @param label
  def default(icon: "fa-home", label: "Home")
    render_with icon:, label:
  end
end
