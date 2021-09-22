class DashboardsController < ApplicationController
  def index
    resp = Faraday.get("https://api.zoom.us/v2/metrics/meetings") do |req|
      req.headers["Authorization"] = "Bearer #{params[:token]}"
    end

  end
end
