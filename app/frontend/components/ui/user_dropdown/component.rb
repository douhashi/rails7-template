# frozen_string_literal: true

class Ui::UserDropdown::Component < ApplicationViewComponent
  option :username
  option :avatar_url
  
  renders_one :dropdown_content
end
