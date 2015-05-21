class AddQuestionIdAndThemeIdToSubtopic < ActiveRecord::Migration
  def change
    add_reference :subtopics, :question, index: true
    add_reference :subtopics, :theme, index: true
  end
end
