class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Post.all.to_json
  end

  def create
    new_post = Post.create(user_id: params[:user_id], content: params[:content])
    render json: { content: new_post }
  end

  def update
    modify_post = Post.update(params[:id], content: params[:content])
    render json: { content: modify_post }
  end

  def destroy
    delete_post = Post.delete(params[:id])
    render json: { content: delete_post }
  end
end
