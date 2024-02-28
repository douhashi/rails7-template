# frozen_string_literal: true

class Ui::UserDropdown::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param username
  def default(username: "John Doe", avatar_url: "https://placehold.it/50x50")
    render_with username:, avatar_url:
  end
end
