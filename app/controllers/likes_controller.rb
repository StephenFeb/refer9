class LikesController < ApplicationController
    before_action :find_post
    before_action :authenticate_user!
    before_action :find_like, only: [:destroy]


def create

   if already_liked?
     flash[:notice] = "You can't like more than once"
    else
    @like = current_user.likes.new(like_params)
    if @like.save
      redirect_to post_path(@post)
    else
      redirect_to posts_path, notice: @post.errors.full_messages.first
    end
  end

end

def destroy
  if !(already_liked?)
    flash[:notice] = "Cannot unlike"
  else
    @like.destroy
  end
  redirect_to post_path(@post)
end


private

def find_like
  @like = @post.likes.find(params[:id])
end

def find_post
    @post = Post.find(params[:post_id])
end

def already_liked?
  Like.where(user_id: current_user.id, post_id:
  params[:post_id]).exists?
end


end
