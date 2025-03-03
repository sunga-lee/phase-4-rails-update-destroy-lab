class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST /plants
  def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end
  def destroy
    plant = plant.find_by(id: params[:id])
    plant.desroy
    render json: no content

  end
  def update
    plant = plant.find_by(id: params[:id])
    plant .update(plant_params)
    render json: plant, status: :updated

  end 

  private

  def plant_params
    params.permit(:name, :image, :price, :is_in_stock)
  end
end
