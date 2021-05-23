class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:show]


def index
    # user profiles feed
end

def show
    # user profile
end

private

def set_user
  @user = User.find(params[:username])
end

end
