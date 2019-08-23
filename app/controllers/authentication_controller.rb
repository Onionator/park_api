class AuthernticationController < ApplicationController
  before_action :authorize_request, except: :login

  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token: token, epx: time.strfttime("%m-%d-%Y %H:%M"),
        username: @user.username }, status: :ok
      else
        render json: { error: 'You are not authorized to access this information.'}, status: :unauthorized
      end
  end

private

  def login_params
    params.permit(:email, :password)
  end

end
