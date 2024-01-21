module ApplicationHelper
  def component(level, name, *args, **kwargs, &)
    component = "#{level.to_s.camelize}::#{name.to_s.camelize}Component".constantize
    render(component.new(*args, **kwargs), &)
  end
end
