# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  reply       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#

require 'rails_helper'

describe Answer do 
    it 'should respond to the proper attributes' do 
        q1 = Question.new(subject:"Qui a découver l'amérique ?", level:"Normal")
        answer = Answer.new(question_id:q1.id, reply:"Christophe Colomb")
        
        expect(answer).respond_to?(:question_id)
        expect(answer).respond_to?(:reply)
    end

    it 'should have the good relationship with Quetions' do
        q1 = Question.new(subject:"Qui a découver l'amérique ?", level:"Normal")
        answer = Answer.new(question_id:q1.id, reply:"Christophe Colomb")

        expect(q1.answers) == answer
       
    end
end
