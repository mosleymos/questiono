require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(),
      Theme.create!()
    ])
  end

  it "renders a list of themes" do
    render
  end
end
