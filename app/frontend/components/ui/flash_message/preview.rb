# frozen_string_literal: true

class Ui::FlashMessage::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param notice text "notice"
  # @param alert text "alert"
  # @param other text "other"
  def default(notice: "notice text", alert: "alert text", other: "other text")
    flash = { notice: notice, alert: alert, other: other }
    render(Ui::FlashMessage::Component.new(flash: flash))
  end
end
