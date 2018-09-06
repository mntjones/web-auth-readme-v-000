class SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: :create
  
  def create
    resp = Faraday.get("https://foursquare.com/oauth2/access_token")
  end
end
