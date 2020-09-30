class ScenesController < ApplicationController
  def create
    scene = Scene.create(scene_params)
  
    render json: scene
  end

  def update
    scene = Scene.find(params[:id])
    scene.update(scene_params)

    render json: scene
  end

  def destroy
    
  end

  private

  def scene_params
    params.require(:scene).permit(:story_id, :title, :text, paths: [:scene_id, :choice_text])
  end
end
