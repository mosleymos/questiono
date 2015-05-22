class AddSubtopicsFieldToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :subtopic_name, :string
  end
end
