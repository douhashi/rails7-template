# frozen_string_literal: true

require "rails_helper"

describe "nav_item component" do
  it "default preview" do
    visit("/dev/lookbook/inspectui/sidebar/nav_item/default")

    is_expected.to_not have_text "Failed"
    # click_on "Click me"
    # is_expected.to have_text "Good-bye!"
  end
end
