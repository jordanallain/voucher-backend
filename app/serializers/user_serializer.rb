class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :bio, :user_instruments

  def user_instruments
    object.user_instruments.pluck(:id)
  end
end
