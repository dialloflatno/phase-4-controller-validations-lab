class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    
    render json: post
  end

  def update
    
    post = Post.find(params[:id])
    post.update(post_params)

    if post.valid?
       render json: post
      else
        render json: {error: post.errors.full_messages}, status: 422
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
