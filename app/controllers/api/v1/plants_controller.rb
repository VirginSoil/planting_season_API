class Api::V1::PlantsController < ApplicationController
  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      render json: plant
    else
      400
    end
  end

  def update
    plant = Plant.find(params[:id])
    plant.update_attributes(plant_params) if plant
    render json: plant
  end

  def destroy
    plant = Plant.find(params[:id])
    plant.destroy if plant
    200
  end

  private

  def plant_params
    params.require(:plant).permit(
      :name,
      :depth,
      :days_to_harvest,
      :age_of_transplant,
      :warm_season,
      :spacing,
      :germination_temperature,
      :days_to_germination)
  end
end
