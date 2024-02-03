# frozen_string_literal: true

require "rails_helper"

describe "section_heading component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/section_heading/default")

    is_expected.to_not have_text "Failed"
  end
end

