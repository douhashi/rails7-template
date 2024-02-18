# frozen_string_literal: true

class Ui::Form::Button::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  # @param button_type select { choices: [button, submit, reset] }
  def default(label: 'This is a button', style: 'primary', size: 'base', wide: false, icon: nil, button_type: 'button')
    render_with(style:, label:, size:, wide: wide, icon: icon, button_type: button_type)
  end

  # @!group Styles
  # @param label text "Label text"
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  # @param button_type select { choices: [button, submit, reset] }
  def primary(label: 'This is a button', size: 'base', wide: false, icon: nil, button_type: 'button')
    render_with(style: 'primary', label:, size:, wide:, icon:, button_type:)
  end

  def secondary(label: 'This is a button', size: 'base', wide: false, icon: nil, button_type: 'button')
    render_with(style: 'secondary', label:, size:, wide:, icon:, button_type:)
  end

  def teritary(label: 'This is a button', size: 'base', wide: false, icon: nil, button_type: 'button')
    render_with(style: 'teritary', label:, size:, wide:, icon:, button_type:)
  end

  def destructive(label: 'This is a button', size: 'base', wide: false, icon: nil, button_type: 'button')
    render_with(style: 'destructive', label:, size:, wide:, icon:, button_type:)
  end
  # @!endgroup Styles

  # @!group Sizes
  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  # @param button_type select { choices: [button, submit, reset] }
  def xs(label: 'Button', style: 'primary', wide: false, icon: nil, button_type: 'button')
    render_with(label:, style:, size: 'xs', wide:, icon:, button_type:)
  end

  def sm(label: 'Button', style: 'primary', wide: false, icon: nil, button_type: 'button')
    render_with(label:, style:, size: 'sm', wide:, icon:, button_type:)
  end

  def base(label: 'Button', style: 'primary', wide: false, icon: nil, button_type: 'button')
    render_with(label:, style:, size: 'base', wide:, icon:, button_type:)
  end

  def lg(label: 'Button', style: 'primary', wide: false, icon: nil, button_type: 'button')
    render_with(label:, style:, size: 'lg', wide:, icon:, button_type:)
  end

  def xl(label: 'Button', style: 'primary', wide: false, icon: nil, button_type: 'button')
    render_with(label:, style:, size: 'xl', wide:, icon:, button_type:)
  end
  # @!endgroup Styles
end
