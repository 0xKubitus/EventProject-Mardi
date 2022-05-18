class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :destroy]

  def new
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
