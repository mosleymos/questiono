class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject
      t.string :level

      t.timestamps null: false
    end
  end
end
