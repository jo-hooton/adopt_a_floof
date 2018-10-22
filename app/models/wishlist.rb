class Wishlist < ApplicationRecord
    belongs_to :user
    has_many :pets, through: :user
end
