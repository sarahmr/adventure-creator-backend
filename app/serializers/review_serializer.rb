class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating
  belongs_to :user
end