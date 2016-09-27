class UserInstrumentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :instrument_id, :user, :instrument
  has_one :user
  has_one :instrument

  def user
    object.user.id
  end

  def instrument
    object.instrument.id
  end
end
