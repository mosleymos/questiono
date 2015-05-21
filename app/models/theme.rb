class Theme < ActiveRecord::Base
  belongs_to :question
  has_many :subtopics
end
