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

class Subtopic < ActiveRecord::Base
  belongs_to :theme
  has_many :questions
end
