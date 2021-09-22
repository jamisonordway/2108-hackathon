class Meeting
  attr_reader :id,
              :topic
              
  def initialize(meeting_info)
      @id = meeting_info[:id]
      @topic = meeting_info[:topic]
      @start_time = meeting_info[:start_time]
      @duration = meeting_info[:duration]
      @participants = meeting_info[:participants]
  end
end