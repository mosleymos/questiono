class RenameColumnThemeFromQuestionToThemeName < ActiveRecord::Migration
  def change
    rename_column :questions, :theme, :theme_name
  end
end
