# frozen_string_literal: true

require "rails_helper"

describe "icon_label component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/icon_label/default")

    is_expected.to_not have_text "Failed"
  end
end

