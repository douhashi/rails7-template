# frozen_string_literal: true

class Ui::Link::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param text text "Link Text"
  # @param url text "Link URL"
  # @param size select { choices: ['', xs, sm, base, lg, xl] }
  # @param weight select { choices: ['', thin, light, normal, semibold, bold] }
  # @param target select { choices: ['', _blank] }
  def default(text: "Link Text", url: "https://google.com", size: nil, weight: nil, target: nil)
    options = { target: target }
    render_with(text:, url:, size:, weight:, options:)
  end
end
