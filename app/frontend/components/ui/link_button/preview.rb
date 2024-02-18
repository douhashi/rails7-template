# frozen_string_literal: true

class Ui::LinkButton::Preview < ApplicationViewComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  def default(label: 'This is a button', style: 'primary', size: 'base', wide: false, icon: nil, url: 'http://www.example.com')
    render_with(style:, label:, size:, wide: wide, icon: icon, url:)
  end

  # @!group Styles
  # @param label text "Label text"
  # @param size select { choices: [xs, sm, base, lg, xl] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  def primary(label: 'This is a button', size: 'base', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(style: 'primary', label:, size:, wide:, icon:, url:)
  end

  def secondary(label: 'This is a button', size: 'base', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(style: 'secondary', label:, size:, wide:, icon:, url:)
  end

  def teritary(label: 'This is a button', size: 'base', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(style: 'teritary', label:, size:, wide:, icon:, url:)
  end

  def destructive(label: 'This is a button', size: 'base', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(style: 'destructive', label:, size:, wide:, icon:, url:)
  end
  # @!endgroup Styles

  # @!group Sizes
  # @param label text "Label text"
  # @param style select { choices: [primary, secondary, teritary, destructive] }
  # @param wide toggle "Wide flag"
  # @param icon text "Icon class"
  def xs(label: 'Button', style: 'primary', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(label:, style:, size: 'xs', wide:, icon:, url:)
  end

  def sm(label: 'Button', style: 'primary', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(label:, style:, size: 'sm', wide:, icon:, url:)
  end

  def base(label: 'Button', style: 'primary', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(label:, style:, size: 'base', wide:, icon:, url:)
  end

  def lg(label: 'Button', style: 'primary', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(label:, style:, size: 'lg', wide:, icon:, url:)
  end

  def xl(label: 'Button', style: 'primary', wide: false, icon: nil, url: 'https://www.example.com')
    render_with(label:, style:, size: 'xl', wide:, icon:, url:)
  end
  # @!endgroup Styles
end
