class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:show, :destroy]


def index
  @comment = Comment.all
end

def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

def create

    @comment = Comment.new(comments_params)
    @post = Post.find(params[:post_id])
    @comment.user_id = current_user.id
    @comment.post = @post

    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
    
    
end

private

def comments_params
    params.require(:comment).permit(:content)
end

def set_comment
  @comment = Comment.find(params[:id])
end



end
