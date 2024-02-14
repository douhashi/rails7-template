# frozen_string_literal: true

require "rails_helper"

describe "checkbox component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/form/checkbox/default")

    is_expected.to_not have_text "Failed"
  end
end

