class UserController < ApplicationController

def join
end

def join_path
  # User.create(
  #   name: params[:name],
  #   email: params[:email],
  #   phone: params[:phone],
  #   password: params[:password],
  #   password_confirmation: params[:password_confirmation]
  # )
  #
  #
  # redirect_to :root
end

def login
end

def login_path
  # user = User.find_by(email: params[:email])
  # unless user.nil?
  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.email
  #     redirect_to :root
  #   else
  #     flash[:alert] = 'Invalid email/password combination'
  #     redirect_to '/user/login'
  #   end
  # else
  #   flash[:alert] = '회원가입 안되어있음'
  #   redirect_to '/user/login'
  # end
end

def logout
  # reset_session
  # redirect_to '/'
end

end
