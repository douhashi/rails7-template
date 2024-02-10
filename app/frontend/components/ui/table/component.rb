# frozen_string_literal: true

class Ui::Table::Component < ApplicationViewComponent
  renders_one :header, Ui::Table::Thead::Component
  renders_one :body, Ui::Table::Tbody::Component
end
