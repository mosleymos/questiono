# == Schema Information
#
# Table name: subtopics
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#  theme_id    :integer
#
# Indexes
#
#  index_subtopics_on_question_id  (question_id)
#  index_subtopics_on_theme_id     (theme_id)
#

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
