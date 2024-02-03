# frozen_string_literal: true

require "rails_helper"

describe "icon_button component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/global_action_panel/icon_button/default")

    is_expected.to_not have_text "Failed"
  end
end

