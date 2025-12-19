class HomeController < ApplicationController
  def index
    account = rodauth.account
    render plain: "Welcome to the Home Page! #{account[:email]}"
  end
end
