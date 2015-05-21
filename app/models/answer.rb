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

class Answer < ActiveRecord::Base
  belongs_to :question
end
