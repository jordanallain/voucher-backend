class Instrument < ActiveRecord::Base
  has_many :users, through: :user_instruments
  has_many :user_instruments
end
