# frozen_string_literal: true

require "rails_helper"

describe "table component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/table/default")

    is_expected.to_not have_text "Failed"
  end
end

