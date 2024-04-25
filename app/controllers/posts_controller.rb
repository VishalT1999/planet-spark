class PostsController < ApplicationController

	before_action :set_post, only: %i[ show edit update destroy ]


  def create
    @post = current_user.posts.new(post_params)
    @post.save
    @posts = Post.all
  end

  def update
    @post.update(post_params)
    @posts = Post.all
  end

  def destroy
    @post.destroy
    @posts = Post.all
  end

  private

    def set_post
      @post = Post.find_by(id: params[:id])
    end

    def post_params
      params.require(:post).permit(:caption, :content)
    end
end
