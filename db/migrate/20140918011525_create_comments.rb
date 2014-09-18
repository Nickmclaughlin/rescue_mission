class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.text :description
      t.references :question, index: true

      t.timestamps
    end
  end
end
