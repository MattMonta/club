class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
    if logged_in? && @current_user.id == @user.id
    elsif logged_in?
      redirect_to root_path
      flash[:danger] = "Tu ne peux pas accéder à ces informations."
    else
      redirect_to login_path
      flash[:danger] = "Tu dois être connecté pour accéder à ces informations."
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash.now[:success] = "Connexion réussie"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    if logged_in? && @current_user.id == @user.id
    elsif logged_in?
      redirect_to root_path
      flash[:danger] = "Tu ne peux pas accéder à ces informations."
    else
      redirect_to login_path
      flash[:danger] = "Tu dois être connecté(e) pour accéder à ces informations."
    end
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
