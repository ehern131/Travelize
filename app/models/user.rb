class User < ApplicationRecord
  has_secure_password
  has_many :trips
  #CODE BELOW IS FOR PAPERCLIP GEM
  has_attached_file :avatar, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
