require 'rails_helper'
describe Subtopic do 
    it 'should respond to the proper attributes' do 
        q1 = Question.new(subject:"Quelle est votre niveau ?", level:"Normal")
        t1 = Theme.new(name:"Programmation", question_id:q1.id)
        s1 = Subtopic.new(name:'Java', question_id:q1.id, theme_id:t1.id) 
        
        expect(s1).respond_to?(:name)
        expect(s1).respond_to?(:question_id)
        expect(s1).respond_to?(:theme_id)
    end
end
