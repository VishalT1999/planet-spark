class HomeController < ApplicationController
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.js
    end
  end
end
