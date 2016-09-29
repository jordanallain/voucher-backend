class UserInstrumentSerializer < ActiveModel::Serializer
  attributes :id, :user, :instrument, :styles, :user_id
  has_one :user
  has_one :instrument

  def user
    object.user.id
  end

  def instrument
    object.instrument.id
  end
end
