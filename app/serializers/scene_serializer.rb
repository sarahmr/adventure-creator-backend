class SceneSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :story_id, :paths
  
end