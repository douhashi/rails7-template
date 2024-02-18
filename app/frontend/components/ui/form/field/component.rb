# frozen_string_literal: true

class Ui::Form::Field::Component < Ui::Form::BaseComponent
  option :field_type, default: -> { "text_field" }
end
