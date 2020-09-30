class StoriesController < ApplicationController
  skip_before_action :authenticate, only: [:index, :show]

  def index 
    # only where published is true
    stories = Story.published_stories

    render json: stories
  end

  def show
    story = Story.find(params[:id])

    render json: story
  end

  def create
    story = Story.create(story_params)

    render json: story
  end

  def story_scenes
    story = Story.find(params[:id])

    scenes = story.scenes

    render json: scenes
  end

  def update
    story = Story.find(params[:id])

    story.update(story_params)

    render json: story
  end

  def destroy
    story = Story.find(params[:id])

    story.destroy

    render json: story
  end

  private

  def story_params
    params.permit(:title, :user_id, :published, :brief_description)
  end

end
