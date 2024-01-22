# @label Basic Text
# @dispalay bg_color: '#000000'
class Atoms::TextComponentPreview < ViewComponent::Preview
  # @!group theme

  # Primary text
  # ---------------
  # This is the button style you should use for most things.
  #
  # @label Primary
  # @param label
  # @param color select { choices: [primary, secondary, surface] }
  # @param size select { choices: [xs, sm, base, lg, xl, 2xl, 3xl, 4xl, 5xl, 6xl, 7xl, 8xl, 9xl] }
  # @display bg_color: 'bg_surface'
  def default(label: 'My Text Content', color: 'primary', size: 'base')
    render(Atoms::TextComponent.new(color: color, size: size)) do
      label
    end
  end

  # @!endgroup theme

end

