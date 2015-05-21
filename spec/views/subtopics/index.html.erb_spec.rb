require 'rails_helper'

RSpec.describe "subtopics/index", type: :view do
  before(:each) do
    assign(:subtopics, [
      Subtopic.create!(),
      Subtopic.create!()
    ])
  end

  it "renders a list of subtopics" do
    render
  end
end
