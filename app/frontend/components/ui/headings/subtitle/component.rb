# frozen_string_literal: true

class Ui::Headings::Subtitle::Component < ApplicationViewComponent
  option :text

  def render?
    text.present?
  end
end
