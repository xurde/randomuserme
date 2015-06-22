require 'spec_helper'

describe RandomUserMe do

  describe ".get_random_user" do
    context "fetches a user" do
      user = RandomUserMe::Client.get_random_user
      
      it "is a valid user" do
        expect(user).to   be_valid
      end

      it "is a valid user" do
        expect(user).to   be_a(RandomUser)
      end
    end
  end

  describe ".get_seeded_user" do
    context "Fetches a seeded user" do
      user = RandomUserMe::Client.get_seeded_user(rand(10000))

      it "is a valid user" do
        expect(user).to   be_valid
      end

      it "is a valid user" do
        expect(user).to   be_a(RandomUser)
      end
    end
  end

end
