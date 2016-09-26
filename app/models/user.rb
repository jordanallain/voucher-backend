class User < ActiveRecord::Base
  include Authentication
  has_many :instruments, through: :users_instruments
  has_many :users_instruments
end
