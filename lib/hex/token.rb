require "hex/token/version"

module Hex
  module Token

    def hex_token
      Digest::MD5.hexdigest Time.now.to_f.to_s
    end

  end
end
