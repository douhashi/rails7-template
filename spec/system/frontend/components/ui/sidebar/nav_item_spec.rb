# frozen_string_literal: true

require "rails_helper"

describe "nav_item component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/sidebar/nav_item/default")

    is_expected.to_not have_text "Failed"
  end
end
