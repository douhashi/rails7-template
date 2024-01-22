# @label Basic Button
class Atoms::ButtonComponentPreview < ViewComponent::Preview
  # @!group color

  # Primary button
  # ---------------
  # This is the button style you should use for most things.
  #
  # @label Primary
  # @param label
  # @param size select { choices: [xs, sm, base, lg, xl, 2xl, 3xl, 4xl, 5xl, 6xl, 7xl, 8xl, 9xl] }
  def default(label: 'My Button', size: 'base')
    render(Atoms::ButtonComponent.new(color: 'primary', size: size)) do
      label
    end
  end

  # Secondary button
  # ---------------
  # @label Secondary
  # @param label
  def secondary(label: 'My Button', size: 'base')
    render(Atoms::ButtonComponent.new(color: 'secondary', size: size)) { label }
  end

  # @!endgroup color
  
  # @!group icon
  # @param label
  # @param color select { choices: [primary, secondary] }
  # @param size select { choices: [xs, sm, base, lg, xl, 2xl, 3xl, 4xl, 5xl, 6xl, 7xl, 8xl, 9xl] }
  def with_icon(label: 'My Button', color: 'primary', size: 'base')
    render(Atoms::ButtonComponent.new(color: color, size: size)) do
      tag.i(class: 'fas fa-star') + tag.span(label)
    end
  end

  def only_icon(color: 'primary', size: 'base')
    render(Atoms::ButtonComponent.new(color: color, size: size)) do
      tag.i(class: 'fas fa-star')
    end
  end
  # @!endgroup icon
end
