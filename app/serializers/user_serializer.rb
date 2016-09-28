class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :bio, :user_instruments, :instruments

  def user_instruments
    object.user_instruments.pluck(:id)
    # object.user_instruments.id
  end

  def instruments
    object.instruments.pluck(:id)
    # object.instruments.id
  end
end
