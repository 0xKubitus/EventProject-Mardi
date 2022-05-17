class UsersController < ApplicationController
  def sign_up
    @user = User.new
  end

  def create
    @user = User.create(post_params)
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end









end
