class ZoomApiService
  def initialize(instructor_email, lesson_date_id)
    @email = instructor_email
    @lesson_date_id = lesson_date_id
  end

  def get_present(zoom_meeting_id)
    # todo:
    #   make API call to list participants
    #   create 'present' attendances with emails in response, lesson_date_id
    # Using zoom as admin with business access
    # resp = Faraday.get("https://api.zoom.us/v2//metrics/meetings/#{zoom_meeting_id}/participants") do |req|
    #   req.headers["Authorization"] = "Bearer #{params[:token]}"
    # end
    resp = File.read("#{Rails.root}/db/mock_data/meeting_participants.json")
    json = JSON.parse(resp, symbolize_names: true)
    participants = json[:participants].map do |participant|
      Attendance.create(
        email: participant[:email],
        lesson_date_id: @lesson_date_id
      )
    end
  end
end
