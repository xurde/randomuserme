class RandomUser

  attr_accessor :name, :gender, :location, :username, :password, :email, :salt, :md5, :sha1, :sha256, :registered, :dob, :phone, :cell, :DNI, :nationality, :picture

  def new
  end

  def valid?
    self.email
  end

  def first_name
    name[""]
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
    user.registered =   Time.at(hash['registered'].to_i) if hash['registered']
    user.picture =      hash['picture']
    return user if user.valid?
  end

end
