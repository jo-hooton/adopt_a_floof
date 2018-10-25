class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pets
end
