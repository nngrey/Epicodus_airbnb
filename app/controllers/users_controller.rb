class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # UserMailer.signup_confirmation(@user).deliver
      redirect_to @user, notice: "User created!" # @user = user_path(@user)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  # def update
  #   if @user.update(user_params)
  #     flash[:notice] = "User updated!"
  #     redirect_to user_path
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @user.destroy
  #   redirect_to users_path
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
