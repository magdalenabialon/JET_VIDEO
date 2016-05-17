require "opentok"

class OpentokService
  def self.create_opentok
    opentok = OpenTok::OpenTok.new("#{Rails.application.secrets.opentok_api_key}", 
                                    "#{Rails.application.secrets.opentok_secret}")
  end
end