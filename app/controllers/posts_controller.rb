class PostsController < ApplicationController
  def index
  	@posts = Post.find(:all, :order => "created_at desc", :limit => 5)
  end

  def show
  	@post = Post.find(params[:id])
  end
end
