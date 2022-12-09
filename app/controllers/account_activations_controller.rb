class AccountActivationsController < ApplicationController
  include(SessionsHelper)
  def edit
    user = User.find_by(email: params[:email])

    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = 'Account activated!'
      redirect_to user
		elsif user && user.activated? && user.authenticated?(:activation, params[:id])
			flash[:info] = 'Please log in to activate your account'
			redirect_to login_url
    else
      flash[:danger] = 'Invalid activation link'
      redirect_to root_url
    end
  end
end
