class Pet < ApplicationRecord
    has_many :comments
    has_many :wishlists
    belongs_to :user
end
