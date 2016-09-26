class UserInstrument < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_instruments
  belongs_to :instrument, inverse_of: :user_instruments

  validates_uniqueness_of :user_id, scope: :instrument_id
end
