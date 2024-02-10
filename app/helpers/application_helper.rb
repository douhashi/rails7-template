module ApplicationHelper
  def navigation_items
    items = []
    items << { :name => 'Sample', :url => root_path, icon: 'fa-home', controllers: ['sample'] }
    items
  end

  def navigation_menus
    menus = []
    navigation_items.each do |item|
      menus << { name: item[:name], url: item[:url], icon: item[:icon], active: navigation_item_active?(item) }
    end
    menus
  end

  def navigation_item_active?(item)
    return false if item[:controllers].blank?
    item[:controllers].include?(controller_name)
  end
end
