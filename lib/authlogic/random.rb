module Authlogic
  # Handles generating random strings. If SecureRandom is installed it will default to this and use it instead. SecureRandom comes with ActiveSupport.
  # So if you are using this in a rails app you should have this library.
  module Random
    extend self

    SecureRandom = (defined?(::SecureRandom) ? ::SecureRandom : ActiveSupport::SecureRandom)

    def hex_token
      SecureRandom.hex(64)
    end
    
    def friendly_token
      # use base64url as defined by RFC4648
      SecureRandom.base64(15).tr('+/=', '').strip.delete("\n")
    end
  end
end