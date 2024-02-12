# frozen_string_literal: true

require "rails_helper"

describe "h3 component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/headings/h3/default")

    is_expected.to_not have_text "Failed"
  end
end

