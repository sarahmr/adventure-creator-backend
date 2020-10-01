class Story < ApplicationRecord
  has_many :scenes, dependent: :destroy
  belongs_to :user
  has_many :reviews, dependent: :destroy

  def self.published_stories
    stories = Story.all.select { |story| story.published }

    return stories
  end

end
