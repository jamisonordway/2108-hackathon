class MeetingsController < ApplicationController
  def show
    # Using zoom as admin with business access
    # resp = Faraday.get("https://api.zoom.us/v2//metrics/meetings/{meetingId}/participants") do |req|
    #   req.headers["Authorization"] = "Bearer #{params[:token]}"
    # end
    resp = File.read("#{Rails.root}/db/mock_data/meeting_participants.json")
    json = JSON.parse(resp, symbolize_names: true)
    @meeting_id = params[:id]
    @participants = json[:participants].map do |participant|
      Participant.new(participant)
    end
  end
end
