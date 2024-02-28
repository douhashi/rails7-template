# frozen_string_literal: true

require "rails_helper"

describe "user_dropdown component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/user_dropdown/default")

    is_expected.to_not have_text "Failed"
  end
end

