class Pet < ApplicationRecord
    has_many :comments
    belongs_to :user
    has_many :wishlists
end
