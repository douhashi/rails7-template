# @label Brand
class Atoms::BrandComponentPreview < ViewComponent::Preview
  # Brand Logo
  # ---------------
  # Brand logo
  #
  # @label Default
  def default
    render Atoms::BrandComponent.new()
  end

end

