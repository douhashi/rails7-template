# frozen_string_literal: true

require "rails_helper"

describe Ui::Heading::Component do
  let(:title) { "Hello, world!" }
  let(:options) { { title: title } }
  let(:component) { Ui::Heading::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to have_text title
  end
end
