# frozen_string_literal: true

require "rails_helper"

describe "text_field component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/form/text_field/default")

    is_expected.to_not have_text "Failed"
  end
end

