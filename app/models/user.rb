class User < ApplicationRecord
    has_one :wishlist
    has_many :pets
    has_many :comments
end
