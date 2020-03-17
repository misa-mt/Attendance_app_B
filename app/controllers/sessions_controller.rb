class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password][:password_confirmation])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render :new
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
