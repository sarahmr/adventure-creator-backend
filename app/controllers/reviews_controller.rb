class ReviewsController < ApplicationController
  def create
    review = Review.create(review_params)

    render json: review
  end

  private

  def review_params
    params.permit(:story_id, :user_id, :review, :rating)
  end
end
