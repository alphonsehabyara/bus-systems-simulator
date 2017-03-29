class PasswordResetsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  # def create
  #   user = User.find_by(email: params[:email])
  #   user.generate_password_reset_token!
  #   redirect_to login_path
  # end

  
  
  def new
    render 'new.html.erb'
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "Email sent with password reset instructions"
      redirect_to root_url
    else
      flash.now[:danger] = "Email address not found"
      render 'new'
    end
  end

  def edit
  end

end
