class UsersController < ApplicationController
  def new
    
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully Created Account"
      redirect_to "/login"
    else
      flash[:warning] = "Invalid email or password"
      redirect_to "/signup"
    end
  end

  # attr_accessor :remember_token, :activation_token, :reset_token
  # before_save   :downcase_email
  # before_create :create_activation_digest
  # .
  # .
  # .
  # # Activates an account.
  # def activate
  #   update_attribute(:activated,    true)
  #   update_attribute(:activated_at, Time.zone.now)
  # end

  # # Sends activation email.
  # def send_activation_email
  #   UserMailer.account_activation(self).deliver_now
  # end

  # # Sets the password reset attributes.
  # def create_reset_digest
  #   self.reset_token = User.new_token
  #   update_attribute(:reset_digest,  User.digest(reset_token))
  #   update_attribute(:reset_sent_at, Time.zone.now)
  # end

  # # Sends password reset email.
  # def send_password_reset_email
  #   UserMailer.password_reset(self).deliver_now
  # end

  # private

  #   # Converts email to all lower-case.
  #   def downcase_email
  #     self.email = email.downcase
  #   end

  #   # Creates and assigns the activation token and digest.
  #   def create_activation_digest
  #     self.activation_token  = User.new_token
  #     self.activation_digest = User.digest(activation_token)
  #   end
    
end
