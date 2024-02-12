# frozen_string_literal: true

class Ui::Headings::H1::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param title text "Title of the heading"
  # @param size select "Size of the heading" { choices: [text-base,text-lg,text-xl,text-2xl,text-3xl, text-4xl, text-5xl] }
  # @param subtitle text "Subtitle of the heading"
  def default(title: "Hello, World!", size: "text-3xl", subtitle: "Subtitle")
    render_with(title:, size:, subtitle:)
  end
end
