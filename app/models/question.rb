# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  subject    :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ActiveRecord::Base
  has_many :answers
  has_one :theme
  has_many :subtopics
end
