# frozen_string_literal: true

require "rails_helper"

describe "profile_dropdown component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/global_action_panel/profile_dropdown/default")

    is_expected.to_not have_text "Failed"
  end
end

