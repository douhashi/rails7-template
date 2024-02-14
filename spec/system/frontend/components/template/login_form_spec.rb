# frozen_string_literal: true

require "rails_helper"

describe "login_form component" do
  subject { page }

  it "default preview" do
    visit("/dev/lookbook/preview/template/login_form/default")

    is_expected.to_not have_text "Failed"
  end
end

