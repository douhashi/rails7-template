# frozen_string_literal: true

require "rails_helper"

describe "link_button component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/link_button/default")

    is_expected.to_not have_text "Failed"
  end
end

