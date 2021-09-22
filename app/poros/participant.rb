class Participant
  attr_reader :email,
              :join_time

  def initialize(participant_info)
    @email = participant_info[:email]
    @join_time = participant_info[:join_time]
  end
end
