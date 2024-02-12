# frozen_string_literal: true

class Ui::Headings::BaseComponent < ApplicationViewComponent
  option :title
  option :subtitle, default: -> { nil }
  option :size, default: -> { 'text-lg' }
end

