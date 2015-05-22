# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  subject    :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  theme      :string
#

require 'rails_helper'

RSpec.describe Question, type: :model do
    it "should respond to the proper arguments" do
        q1 = Question.new(subject:"Comment allez vous ?" , level:"Normal")
        expect(q1).respond_to?(:subject)
        expect(q1).respond_to?(:level)
        expect(q1.subject) == "Comment allez vous ?"
        expect(q1.level) == "Normal"
    end
end
