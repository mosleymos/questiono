class Subtopic < ActiveRecord::Base
  belongs_to :theme
  has_many :questions
end
