# frozen_string_literal: true

class Ui::Paragraph::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param content text "Content text"
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param weight select { choices: [thin, light, normal, semibold, bold] }
  def default(content: "This is a paragraph", size: 'base', weight: 'normal')
    render_with(content:, size:, weight:)
  end
end
