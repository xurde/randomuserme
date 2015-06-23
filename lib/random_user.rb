require 'attrio'

class RandomUser

  include Attrio

  define_attributes do
    attr :email, String
    attr :name, Hash
    attr :username, String
    attr :password, String
    attr :salt, String
    attr :md5, String
    attr :sha1, String
    attr :sha256, String
    attr :gender, String
    attr :registered, DateTime
    attr :dob, Date
    attr :phone, String
    attr :cell, String
    attr :nationality, String
    attr :location, Hash
    attr :picture, Hash
  end

  def valid?
    !email.nil? && !name.empty?
  end

  def first_name
    name["first"].capitalize if name["first"]
  end

  def last_name
    name["last"].capitalize if name["last"]
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def formal_name
    "#{name["title"]}. #{last_name}"
  end

  def full_formal_name
    "#{name["title"]}. #{last_name}, #{first_name}"
  end

  def full_location
    "#{location["street"]}, #{location["city"]} #{location["postcode"]}, #{location["state"]}"
  end

  def self.create_from_hash(hash)
    user = RandomUser.new
    user.name =         hash['name']
    user.email =        hash['email']
    user.gender =       hash['gender']
    user.username =     hash['username']
    user.password =     hash['password']
    user.salt =         hash['salt']
    user.md5 =          hash['md5']
    user.sha1 =         hash['sha1']
    user.sha256 =       hash['sha256']
    user.dob =          Time.at(hash['dob'].to_i) if hash['dob']
    user.phone =        hash['phone']
    user.cell =         hash['cell']
    user.nationality =  hash['nationality']
    user.location =     hash['location']
    user.registered =   Time.at(hash['registered'].to_i) if hash['registered']
    user.picture =      hash['picture']
    return user if user.valid?
  end

end
