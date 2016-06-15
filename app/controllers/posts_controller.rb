class PostsController < ApplicationController

  def index
    @posts = Post.all
    # respond_to do |format|
    #   format.html { render :index }
    #   format.json { render json: @posts }
    # end
    render json: @posts

  end

  def show
    @post = Post.find(params[:id]);
    render json: @post
    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @post }
    # end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content])
  end



end
