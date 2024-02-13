# frozen_string_literal: true

require "rails_helper"

describe "field_with_icon component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/ui/form/field_with_icon/default")

    is_expected.to_not have_text "Failed"
  end
end

