class CreateScenes < ActiveRecord::Migration[6.0]
  def change
    create_table :scenes do |t|
      t.string :title
      t.string :text
      t.integer :story_id
      t.json :paths

      t.timestamps
    end
  end
end
