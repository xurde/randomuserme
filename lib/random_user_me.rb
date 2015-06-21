require 'randomuserme/version'
require 'random_user'
require "httparty"

module RandomUserMe
  class Client

    include HTTParty

    base_uri 'http://api.randomuser.me'

    format :json

    def self.get_random_user
      response = get('/')
      return false if !response.parsed_response
      response_map(response)
    end

    def self.get_seeded_user(seed)
      response = get("/?seed=#{seed}")
      return false if !response.parsed_response
      self.response_map(response)
    end

    private

    def self.response_map(response)
      user_hash = response["results"].first["user"]
      if !user_hash.empty?
        user = RandomUser.create_from_hash(user_hash)
        return user
      else
        return nil
      end
    end

  end
end
