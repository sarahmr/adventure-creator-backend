class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :user_id
      t.boolean :published

      t.timestamps
    end
  end
end
