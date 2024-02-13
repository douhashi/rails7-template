# frozen_string_literal: true

class Ui::Button::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param size select { choices: [xs, sm, base, lg, xl] }
  def default(label: 'This is a button', style: 'primary', size: 'base')
    render_with(style:, label:, size:)
  end

  # @!group Styles
  # @param label text "Label text"
  # @param size select { choices: [xs, sm, base, lg, xl] }
  def primary(label: 'This is a button', size: 'base')
    render_with(style: 'primary', label:, size:)
  end

  def secondary(label: 'This is a button', size: 'base')
    render_with(style: 'secondary', label:, size:)
  end

  def teritary(label: 'This is a button', size: 'base')
    render_with(style: 'teritary', label:, size:)
  end

  def destructive(label: 'This is a button', size: 'base')
    render_with(style: 'destructive', label:, size:)
  end
  # @!endgroup Styles

  # @!group Sizes
  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  def xs(label: 'Button', style: 'primary')
    render_with(label:, style:, size: 'xs')
  end

  def sm(label: 'Button', style: 'primary')
    render_with(label:, style:, size: 'sm')
  end

  def base(label: 'Button', style: 'primary')
    render_with(label:, style:, size: 'base')
  end

  def lg(label: 'Button', style: 'primary')
    render_with(label:, style:, size: 'lg')
  end

  def xl(label: 'Button', style: 'primary')
    render_with(label:, style:, size: 'xl')
  end
  # @!endgroup Styles
end
