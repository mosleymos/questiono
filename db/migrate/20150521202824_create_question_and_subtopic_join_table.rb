class CreateQuestionAndSubtopicJoinTable < ActiveRecord::Migration
  def change
    create_join_table :questions, :subtopics do |t|
        t.index :question_id
        t.index :subtopic_id
    end
  end
end
