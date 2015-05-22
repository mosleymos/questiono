# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_themes_on_question_id  (question_id)
#

class Theme < ActiveRecord::Base
  belongs_to :question
  has_many :subtopics
end
