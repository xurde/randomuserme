require 'spec_helper'

describe RandomUserMe do

  describe ".get_random_user" do
    it "Fetches a new random valid user" do
      user = RandomUserMe::Client.get_random_user
      expect(user).to     be_valid
    end
  end

  describe ".get_seeded_user" do
    it "Fetches a new seeded random valid user" do
      user = RandomUserMe::Client.get_seeded_user(rand(10000))
      expect(user).to     be_valid
    end
  end
  
end
