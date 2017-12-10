class SessionsController < ApplicationController
  def create
  	user = User.from_omniauth(env['omniauth.auth'])
  	session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in."
   # puts env['omniauth.auth'].class
   # puts env['omniauth.auth'].keys
   # puts env['omniauth.auth'].inspect
   # raise env['omniauth.auth'].to_yaml
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Signed out."
end


end