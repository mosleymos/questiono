require 'rails_helper'

RSpec.describe "subtopics/new", type: :view do
  before(:each) do
    assign(:subtopic, Subtopic.new())
  end

  it "renders new subtopic form" do
    render

    assert_select "form[action=?][method=?]", subtopics_path, "post" do
    end
  end
end
