# frozen_string_literal: true

class Ui::Button::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  def default(label: 'This is a button', style: 'primary', size: 'base', wide: false)
    render_with(style:, label:, size:, wide: wide)
  end

  # @!group Styles
  # @param label text "Label text"
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  def primary(label: 'This is a button', size: 'base', wide: false)
    render_with(style: 'primary', label:, size:, wide:)
  end

  def secondary(label: 'This is a button', size: 'base', wide: false)
    render_with(style: 'secondary', label:, size:, wide:)
  end

  def teritary(label: 'This is a button', size: 'base', wide: false)
    render_with(style: 'teritary', label:, size:, wide:)
  end

  def destructive(label: 'This is a button', size: 'base', wide: false)
    render_with(style: 'destructive', label:, size:, wide:)
  end
  # @!endgroup Styles

  # @!group Sizes
  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param wide toggle "Wide flag"
  def xs(label: 'Button', style: 'primary', wide: false)
    render_with(label:, style:, size: 'xs', wide:)
  end

  def sm(label: 'Button', style: 'primary', wide: false)
    render_with(label:, style:, size: 'sm', wide:)
  end

  def base(label: 'Button', style: 'primary', wide: false)
    render_with(label:, style:, size: 'base', wide:)
  end

  def lg(label: 'Button', style: 'primary', wide: false)
    render_with(label:, style:, size: 'lg', wide:)
  end

  def xl(label: 'Button', style: 'primary', wide: false)
    render_with(label:, style:, size: 'xl', wide:)
  end
  # @!endgroup Styles
end
