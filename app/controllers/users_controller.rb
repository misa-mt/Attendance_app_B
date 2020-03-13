class UsersController < ApplicationController
  before_action :set_user, only: :show
  
  def new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "ユーザーを登録しました。"
      redirect_to user_url
    else
      render :new
    end
  end
  
  def show
  end
  
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
