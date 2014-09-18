class ChangeTextToDescriptionQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :text
    add_column :questions, :description, :text
  end

  def down
    add_column :questions, :text, :text
    remove_column :questions, :description
  end
end
