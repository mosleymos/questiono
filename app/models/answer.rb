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

  # Rules for the model validation in the database

  validates :reply,  presence: true           # You must have a reply
  validates :reply,  length: { in: 3..3000}   # You must have a reply between 3 and 3000 characters
end
