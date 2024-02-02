# frozen_string_literal: true

require "rails_helper"

describe Ui::Header::Brand::Component do
  let(:app_name) { 'App Name' }
  let(:options) { {name: app_name} }
  let(:component) { Ui::Header::Brand::Component.new(**options) }

  subject { rendered_content }

  it "renders" do
    render_inline(component)

    is_expected.to include app_name
  end
end
