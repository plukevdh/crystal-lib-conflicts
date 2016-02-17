require "../libs/openssl"
require "./lib-conflicts/*"

module Lib::Conflicts
  def self.test
    digest = OpenSSL::Digest::SHA256.new
    digest.update("my cool string")
    digest.hexdigest
  end
end
