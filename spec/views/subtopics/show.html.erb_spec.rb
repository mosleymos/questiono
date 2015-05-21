require 'rails_helper'

RSpec.describe "subtopics/show", type: :view do
  before(:each) do
    @subtopic = assign(:subtopic, Subtopic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
