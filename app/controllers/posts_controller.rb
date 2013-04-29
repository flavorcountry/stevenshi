class PostsController < ApplicationController
  def index
  	@posts = Post.find(:all, :order => "created_at desc", :limit => 5)
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new
  end

  def create
  	password = params[:post].delete('password')
  	if User.first.authenticate(password)
  		@post = Post.create(params[:post])
      redirect_to root_path
  	else
  		redirect_to root_path, error: "Nope."
  	end
  end
end
