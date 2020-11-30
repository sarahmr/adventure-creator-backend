class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:create, :login]

  def create
    user = User.create(user_params)

    if user.valid?
      token = encode_token({ user_id: user.id })

      render json: { user: UserSerializer.new(user), token: token, image: "https://www.gravatar.com/avatar/#{user.image_hash}?d=robohash" }, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :bad_request
    end
  end

  def login
    user = User.find_by(username: params[:username])
   
    if user && user.authenticate(params[:password])
      token = encode_token({ user_id: user.id })

      render json: { user: UserSerializer.new(user), token: token, image: "https://www.gravatar.com/avatar/#{user.image_hash}?d=robohash" }
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end

  def autologin
    render json: { user: @current_user, image: "https://www.gravatar.com/avatar/#{@current_user.image_hash}?d=robohash" }
  end

  def user_stories
    user = User.find(params[:id])

    if @current_user.id == user.id
      stories = user.stories
    else
      stories = user.stories.select{ |story| story.published }
    end

    render json: stories
  end

  def show
    user = User.find(params[:id])

    render json: { user: user, image: "https://www.gravatar.com/avatar/#{user.image_hash}?d=robohash" }
  end

  def update
    user = User.find(params[:id])

    bio = params[:bio]

    user.bio = bio

    render json: user
  end

  private

  def user_params
    params.permit(:name, :username, :email, :bio, :password)
  end

end
