class Atoms::Base < ViewComponent::Base
  attr_accessor :color, :size

  def initialize(**args)
    set_default_params

    args.each do |key, value|
      instance_variable_set(:"@#{key}", value)
    end
  end

  def dynamic_classes
    [bg_color_class, text_color_class, size_class].compact.join(' ')
  end

  def set_default_params
  end

  def text_color_class
    case @color
    when 'primary'
      'text-on-primary'
    when 'secondary'
      'text-on-secondary'
    end
  end

  def bg_color_class
    case @color
    when 'primary'
      'bg-primary-500 hover:bg-primary-700'
    when 'secondary'
      'bg-secondary-600 hover:bg-secondary-800'
    end
  end

  def hover_class
    case @color
    when 'primary'
      'hover:bg-primary-700'
    when 'secondary'
      'hover:bg-secondary-800'
    end
  end

  def size_class
    case @size
    when 'xs'
      'text-xs'
    when 'sm'
      'text-sm'
    when 'base'
      'text-base'
    when 'lg'
      'text-lg'
    when 'xl'
      'text-xl'
    when '2xl'
      'text-2xl'
    when '3xl'
      'text-3xl'
    when '4xl'
      'text-4xl'
    when '5xl'
      'text-5xl'
    when '6xl'
      'text-6xl'
    when '7xl'
      'text-7xl'
    when '8xl'
      'text-8xl'
    when '9xl'
      'text-9xl'
    end
  end

  def padding_class
    case size
      when 'xs'
        'px-2 py-1'
      else
        'px-4 py-2'
    end
  end

end

