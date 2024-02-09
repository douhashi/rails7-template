# frozen_string_literal: true

class Ui::Table::Component < ApplicationViewComponent
  renders_one  :header
  renders_many :rows
end
