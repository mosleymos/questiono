class AddQuestionIdToTheme < ActiveRecord::Migration
  def change
    add_reference :themes, :question, index: true
  end
end
