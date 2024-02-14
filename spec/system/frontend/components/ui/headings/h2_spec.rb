# frozen_string_literal: true

require "rails_helper"

describe "h2 component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/headings/h2/default")

    is_expected.to_not have_text "Failed"
  end
end

