# frozen_string_literal: true

class Ui::Badge::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param text text "Badge text"
  # @param color select { choices: [primary, secondary, teritary, destructive] }
  # @param size select { choices: [xs, sm, base, lg, xl] }
  def default(text: 'Text', color: 'primary', size: 'xs')
    render_with(text:, color:, size:)
  end
end
