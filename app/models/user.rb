class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email

  has_many :libraries
  has_many :cards, :through => :libraries
end
