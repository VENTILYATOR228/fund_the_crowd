class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @campaigns = @user.campaigns
  end
end