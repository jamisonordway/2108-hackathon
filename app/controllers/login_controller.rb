class LoginController < ApplicationController
  def show
  end

  def create
    resp = Faraday.post("https://zoom.us/oauth/token") do |req|
      req.headers["Authorization"] = "Basic #{ENV["authorization"]}"
      req.params["grant_type"] = "authorization_code"
      req.params["code"] = "#{params[:code]}"
      req.params["redirect_uri"] = "#{ENV["redirect_uri"]}"
    end
    json = JSON.parse(resp.body, symbolize_names: true)
    redirect_to dashboards_path(token: json[:access_token])
  end
end