class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    respond_to :js, :html, :json

def index
    @posts = Post.all
end

def new
    @post = Post.new
end

def show
  @comments = @post.comments
end

def create

    @post = Post.new(post_params)
    @post.user_id = current_user.id
    
    if @post.save
      redirect_to posts_path(@post)
    else
      render :new
    end
  end

def like
  @post = Post.find(params[:id])
    if params[:format] == 'like'
      @post.liked_by current_user
    elsif params[:format] == 'unlike'
      @post.unliked_by current_user
    end
end


private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
