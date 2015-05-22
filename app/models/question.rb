# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  subject       :string
#  level         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  theme_name    :string
#  subtopic_name :string
#

class Question < ActiveRecord::Base
  has_many :answers
  has_one :theme
  has_and_belongs_to_many :subtopics
end
