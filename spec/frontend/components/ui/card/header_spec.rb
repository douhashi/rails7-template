# frozen_string_literal: true

require "rails_helper"

describe Ui::Card::Header::Component do
  let(:title) { "Hello, World!" }
  let(:options) { { title: title } }
  let(:component) { Ui::Card::Header::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_text title
  end
end
