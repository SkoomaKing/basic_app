class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get
    render json: Post.all.to_json
  end

  def create
    new_post = Post.create(user_id: params[:user_id], content: params[:content])
    render json: {content: new_post}
  end
end
