class PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @posts }
    end

  end

  def show
    @post = Post.find(params[:id]);
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post }
    end
  end


end
