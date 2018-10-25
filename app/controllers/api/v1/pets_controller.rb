class Api::V1::PetsController < ApplicationController
    before_action :find_pet, only: [:update]
  def index
    @pets = Pet.all
    render json: @pets
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
        render json: @pet, status: :accepted
      else
        render json: { errors: @pet.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @pet.update(pet_params)
    if @pet.save
      render json: @pet, status: :accepted
    else
      render json: { errors: @pet.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :years, :months, :species, :breed, :temperament, :description, :reserved, :adopted, :img_url, :user_id)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
