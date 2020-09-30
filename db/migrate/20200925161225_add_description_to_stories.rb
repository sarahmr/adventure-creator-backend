class AddDescriptionToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :brief_description, :text
  end
end
