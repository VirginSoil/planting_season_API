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
    planting = Planting.new(planting_params)
    if planting.save
      render json: planting
    else
      400
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
    params.require(:planting).permit(:bed_id, :plant_id, :planting_date, :estimated_harvest_date, :harvested)
  end
end