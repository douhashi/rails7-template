# @label Basic Button
class Atoms::TextComponentPreview < ViewComponent::Preview

  # @!group theme

  # Primary button
  # ---------------
  # This is the button style you should use for most things.
  #
  # @label Primary
  # @param label
  # @param size select { choices: [xs, sm, base, lg, xl, 2xl, 3xl, 4xl, 5xl, 6xl, 7xl, 8xl, 9xl] }
  def default(label: 'My Button', size: 'base')
    render(Atoms::ButtonComponent.new(theme: 'primary', size: size)) do
      label
    end
  end

  # @!endgroup

end

