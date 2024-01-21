# @label Basic Button
class Atoms::ButtonComponentPreview < ViewComponent::Preview

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

  # Secondary button
  # ---------------
  # @label Secondary
  # @param label
  def secondary(label: 'My Button', size: 'base')
    render(Atoms::ButtonComponent.new(label: label, theme: 'secondary', size: size))
  end

  # @!endgroup theme
  
  # @!group icon
  # @param label
  # @param theme select { choices: [primary, secondary] }
  # @param size select { choices: [xs, sm, base, lg, xl, 2xl, 3xl, 4xl, 5xl, 6xl, 7xl, 8xl, 9xl] }
  def with_icon(label: 'My Button', theme: 'primary', size: 'base')
    render(Atoms::ButtonComponent.new(theme: theme, size: size)) do
      tag.i(class: 'fas fa-star') + tag.span(label)
    end
  end

  def only_icon(theme: 'primary', size: 'base')
    render(Atoms::ButtonComponent.new(theme: theme, size: size)) do
      tag.i(class: 'fas fa-star')
    end
  end
  # @!endgroup icon

  # @!group size
  # @param label
  # @param theme select { choices: [primary, secondary] }
  def size_xs(label: 'My Button', size: 'xs', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_sm(label: 'My Button', size: 'sm', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_base(label: 'My Button', size: 'base', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_lg(label: 'My Button', size: 'lg', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_xl(label: 'My Button', size: 'xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_2xl(label: 'My Button', size: '2xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_3xl(label: 'My Button', size: '3xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_4xl(label: 'My Button', size: '4xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_5xl(label: 'My Button', size: '5xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_6xl(label: 'My Button', size: '6xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_7xl(label: 'My Button', size: '7xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_8xl(label: 'My Button', size: '8xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end

  def size_9xl(label: 'My Button', size: '9xl', theme: 'primary')
    render(Atoms::ButtonComponent.new(label: label, size: size, theme: theme))
  end
  # @!endgroup
end
