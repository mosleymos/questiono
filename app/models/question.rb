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

  # Rules for the model validation in the database
  
  validates :subject, presence: true,           # You must have a question
                      length: { minimum: 3},    #  minimum 3 characters
                      length: { maximum: 5000}  #  maximum 5000 characters

  validates :level, presence: true              # You must have a level
  validates :theme_name, presence: true         # You must have theme
  validates :subtopic_name, presence: true      # You must have a subtopic   

end
