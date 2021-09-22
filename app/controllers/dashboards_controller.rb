class DashboardsController < ApplicationController
  def index
    # Using zoom as admin with business access
    # resp = Faraday.get("https://api.zoom.us/v2/metrics/meetings") do |req|
    #   req.headers["Authorization"] = "Bearer #{params[:token]}"
    # end
    resp = File.read("#{Rails.root}/db/mock_data/meetings.json")
    json = JSON.parse(resp, symbolize_names: true)
    @meetings = json[:meetings].map do |meeting|
      Meeting.new(meeting)
    end
  end
end