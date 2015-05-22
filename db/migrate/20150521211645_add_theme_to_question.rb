class AddThemeToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :theme, :string
  end
end
