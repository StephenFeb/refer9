class UsersController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_user, only: [:show]


def index
    # user profiles feed

    if params[:query].present?
        @users = User.search_by_name_and_job(params[:query])
    else
        @users = User.all
end

def show
    # user profile
    @user = User.find(params[:id])
end



private

# def set_user
  # @user = User.find(params[:username])
# end

def user_params
    params.require(:user).permit(:first_name, :last_name, :bio, :cv)
end

end
