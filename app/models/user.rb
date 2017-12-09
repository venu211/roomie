class User < ApplicationRecord
	#attr_accessor :provider, :uid, :name, :email, :location, :image 
	# def self.from_omniauth(auth)
 #    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
 #  end
  
 #  def self.create_from_omniauth(auth)
 #    create! do |user|
 #      user.provider = auth["provider"]
 #      user.uid = auth["uid"]
 #      user.name = auth["info"]["name"]
 #      user.email = auth["info"]["email"]
 #      user.location = auth["info"]["location"]
 #      user.image = auth["info"]["image"]
 #    end
 #  end

  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.provider = auth.provider 
    user.uid      = auth.uid
    user.name     = auth.info.name
    user.email    = auth.info.email
    user.location = auth.info.location
    user.image    = auth.info.image
    user.save
  end
end
end
