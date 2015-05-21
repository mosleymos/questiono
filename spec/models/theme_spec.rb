require 'rails_helper'

describe Theme do 
    it 'should respond to the proper attributes' do 
        q1 = Question.new(subject:"Quelle est votre niveau ?", level:"Normal")
        t1 = Theme.new(name:"Programmation", question_id:q1.id)
        
        expect(t1).respond_to?(:name)
        expect(t1).respond_to?(:question_id)
    end
end
