# frozen_string_literal: true

require "rails_helper"

describe "subtitle component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/headings/subtitle/default")

    is_expected.to_not have_text "Failed"
  end
end

