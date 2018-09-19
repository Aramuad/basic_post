class Api::BasicPostsController < ApplicationController
  before_action :set_basic_post, only: [:show, :update, :destroy]
  
  def index
    render json: BasicPost.all.order(created_at: :desc)
  end

  def show
    render json: @basic_post
  end

  def create
    post = BasicPost.create(basic_post_params)

    if post.save
      render json: @basic_post
    else
      render json: { errors: @basic_post.errors.full_messages.join(',') }, status: 422
    end
  end

  def updatae
    if @basic_post.update(basic_post_params)
      render json: @basic_post
    else
      render json: { errors: @basic_post.errors.full_messages.join(',') }, status: 422
    end
  end

  def destroy
    @basic_post.destroy
  end

  private
  def set_basic_post
    @basic_post = BasicPost.find(params{:id})
  end

  def basic_post_params
    params.require(:basic_post).permit(:body)
  end
end
