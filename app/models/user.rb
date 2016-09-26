class User < ActiveRecord::Base
  include Authentication
  has_many :instruments, through: :user_instruments
  has_many :user_instruments
end
