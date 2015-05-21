class Question < ActiveRecord::Base
  has_many :answers
  has_one :theme
  has_many :subtopics
end
