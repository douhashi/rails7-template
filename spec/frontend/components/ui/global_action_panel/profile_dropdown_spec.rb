# frozen_string_literal: true

require "rails_helper"

describe Ui::GlobalActionPanel::ProfileDropdown::Component do
  let(:username) { "John Doe" }
  let(:avatar_url) { "https://example.com/avatar.jpg" }
  let(:options) { { username: username, avatar_url: avatar_url } }
  let(:component) { Ui::GlobalActionPanel::ProfileDropdown::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_css "div"
  end
end
