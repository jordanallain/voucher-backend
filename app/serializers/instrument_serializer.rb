class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :users

  def users
    object.users.pluck(:id)
  end
end
