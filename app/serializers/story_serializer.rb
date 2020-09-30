class StorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :published, :brief_description, :avg_rating
  has_one :user
  has_many :scenes
  has_many :reviews

  def avg_rating
    if object.reviews.length > 0
      average = (object.reviews.sum { |review| review.rating } / object.reviews.length.to_f).round
    end
    average
  end
end