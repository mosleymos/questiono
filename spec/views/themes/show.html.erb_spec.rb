require 'rails_helper'

RSpec.describe "themes/show", type: :view do
  before(:each) do
    @theme = assign(:theme, Theme.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
