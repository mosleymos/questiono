require 'rails_helper'

RSpec.describe "subtopics/edit", type: :view do
  before(:each) do
    @subtopic = assign(:subtopic, Subtopic.create!())
  end

  it "renders the edit subtopic form" do
    render

    assert_select "form[action=?][method=?]", subtopic_path(@subtopic), "post" do
    end
  end
end
