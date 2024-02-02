module ApplicationHelper
  def component(name, *args, **kwargs, &)
    component = "#{name.to_s.camelize}::Component".constantize
    render(component.new(*args, **kwargs), &)
  end
end
