module ApplicationHelper
  def navigation_items
    items = []
    items << { :name => 'Sample', :url => root_path, icon: 'fa-home', controllers: ['sample'] }
    items << { :name => 'Lookbook', :url => '/dev/lookbook', icon: 'fa-book' }
    items
  end

  def navigation_menus
    navigation_items.map do |item|
      { name: item[:name], url: item[:url], icon: item[:icon], active: navigation_item_active?(item) }
    end
  end

  def navigation_item_active?(item)
    return false if item[:controllers].blank?
    item[:controllers].include?(controller_name)
  end
end
