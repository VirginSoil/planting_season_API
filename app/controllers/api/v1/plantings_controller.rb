class Api::V1::PlantingsController < ApplicationController

  def index
    plantings = Planting.all
    render json: plantings
  end

  def show
    planting = Planting.find(params[:id])
    render json: planting
  end

  def create
    plant = Plant.find_by(:name => params[:planting][:plant])
    attributes = planting_params.merge(
      :planting_date => 0.second.ago,
      :plant_id => plant.id
    )
    binding.pry
    planting = Planting.new(attributes)
    if planting.save
      render json: planting
    else
      render :json => { :errors => planting.errors.full_messages }, :status => 422
    end
  end

  def update
    planting = Planting.find(params[:id])
    planting.update_attributes(planting_params) if planting
    render json: planting
  end

  def destroy
    planting = Planting.find(params[:id])
    planting.destroy if planting
    200
  end

  private

  def planting_params
    params.require(:planting).permit(
      :bed_id,
      :plant_id,
      :planting_date,
      :estimated_harvest_date,
      :harvested,
      :row,
      :column
    )
  end
end
