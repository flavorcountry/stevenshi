class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at desc").page(params[:page]).per_page(5)
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

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    password = params[:post].delete('password')
    if User.first.authenticate(password)
      @post.update_attributes(params[:post])
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post), error: "Nope."
    end
  end

  def destroy_confirmation
    @post = Post.find(params[:id])
  end

  def destroy
    password = params[:password]
    @post = Post.find(params[:id])

    if User.first.authenticate(password)
      @post.delete
      redirect_to root_path
    else
      redirect_to destroy_confirmation_path(id: @post.id)
    end
  end

end
