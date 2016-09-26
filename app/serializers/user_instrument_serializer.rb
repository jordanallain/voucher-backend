class UserInstrumentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :instrument_id
  has_one :user
  has_one :instrument
end
