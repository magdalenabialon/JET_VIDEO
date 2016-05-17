require "opentok"

class OpentokService
  def self.create(room)
    @room = room
    @opentok = OpenTok::OpenTok.new("#{Rails.application.secrets.opentok_api_key}", 
                                    "#{Rails.application.secrets.opentok_secret}")

    @session = @opentok.create_session
    @token = @opentok.generate_token @room.session_id, {role: :moderator}

    @room.update_attributes session_id: @session.session_id, token: @token
  end
end