require "opentok"

class OpentokService
  def initialize(room)
    @room = room
    @opentok = OpenTok::OpenTok.new("#{Rails.application.secrets.opentok_api_key}", 
                                    "#{Rails.application.secrets.opentok_secret}")
  end

  def generate_token
    create_session
    role = :moderator
    @token = @opentok.generate_token @room.session_id, {role: role}

    @room.update_attributes token: @token
  end

  def create_session
    tok_session = @opentok.create_session

    @room.update_attributes session_id: tok_session.session_id
  end
end