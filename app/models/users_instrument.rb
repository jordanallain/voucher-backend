class UsersInstrument < ActiveRecord::Base
  belongs_to :user, inverse_of: :users_instruments
  belongs_to :instrument, inverse_of: :users_instruments

  validates_uniqueness_of :user_id, scope: :instrument_id
end
