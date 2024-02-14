# frozen_string_literal: true

class Ui::Table::Row::Component < ApplicationViewComponent
  renders_many :columns, Ui::Table::Th::Component
end
