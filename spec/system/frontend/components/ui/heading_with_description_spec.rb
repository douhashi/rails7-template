# frozen_string_literal: true

require "rails_helper"

describe "heading_with_description component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/heading_with_description/default")

    is_expected.to_not have_text "Failed"
  end
end

