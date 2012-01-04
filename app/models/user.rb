class User < ActiveRecord::Base
  
  def password=(password)
    self.password_salt = [Array.new(10) { rand(256).chr }.join].pack("m").chomp
    self.password_hash = Digest::SHA1.hexdigest(password + password_salt)
  end
  
  def password_is?(password)
    self.password_hash == Digest::SHA1.hexdigest(password + password_salt)
  end
  
end
