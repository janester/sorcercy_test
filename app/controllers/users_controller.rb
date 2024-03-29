class UsersController < ApplicationController
  before_filter :require_login, :only => :show
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, :notice => "signed up!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
