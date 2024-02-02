# frozen_string_literal: true

class Atoms::BrandComponent < Atoms::Base
  def initialize(brand: 'Brand Name')
    @brand = brand
  end
end
