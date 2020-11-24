class AddPositionToScenes < ActiveRecord::Migration[6.0]
  def change
    add_column :scenes, :position, :json
  end
end
