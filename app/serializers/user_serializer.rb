class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :id, :email, :bio, :image

  def image
    hash = object.image_hash
    image = "https://www.gravatar.com/avatar/#{hash}?d=robohash"
    return image
  end
end