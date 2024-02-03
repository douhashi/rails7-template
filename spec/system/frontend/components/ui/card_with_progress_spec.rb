# frozen_string_literal: true

require "rails_helper"

describe "card_with_progress component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/card_with_progress/default")

    is_expected.to_not have_text "Failed"
  end
end

