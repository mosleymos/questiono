require 'rails_helper'

RSpec.describe Question, type: :model do
    it "should respond to the proper arguments" do
        q1 = Question.new(subject:"Comment allez vous ?" , level:"Normal")
        expect(q1).respond_to?(:subject)
        expect(q1).respond_to?(:level)
        expect(q1.subject).eq "Comment allez vous ?"
        expect(q1.level).eq "Normal"
    end
end
