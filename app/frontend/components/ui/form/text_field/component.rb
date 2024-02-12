# frozen_string_literal: true

class Ui::Form::TextField::Component < Ui::Form::BaseComponent
  option :placeholder, default: -> { nil }
  option :required, default: -> { false }
end
