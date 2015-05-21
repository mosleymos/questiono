class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :reply

      t.timestamps null: false
    end
  end
end
