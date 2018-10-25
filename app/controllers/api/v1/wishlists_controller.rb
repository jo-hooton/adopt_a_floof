class Api::V1::WishlistsController < ApplicationController
    before_action :find_wishlist, only: [:update]
    def index
      @wishlists = Wishlist.all
      render json: @wishlists
    end
  
    def create
      @wishlist = Wishlist.new(wishlist_params)
      if @wishlist.save
          render json: @wishlist, status: :accepted
        else
          render json: { errors: @wishlist.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def update
      @wishlist.update(wishlist_params)
      if @wishlist.save
        render json: @wishlist, status: :accepted
      else
        render json: { errors: @wishlist.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    private
  
    def wishlist_params
      params.require(:wishlist).permit(:user_id)
    end
  
    def find_wishlist
      @wishlist = Wishlist.find(params[:id])
    end

end