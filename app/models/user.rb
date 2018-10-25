class User < ApplicationRecord
    has_many :pets
    has_many :comments
    has_one :wishlist
end
