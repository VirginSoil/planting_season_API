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
    attributes = planting_params.merge(:planting_date => 0.second.ago)
    planting = Planting.new(attributes)
    if planting.save
      render json: planting
    else
      render :json => { :errors => planting.errors.full_messages }, :status => 422
    end
  end

  def for_bed
    plantings = Planting.where(:bed_id => params[:id])
    render json: plantings
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
      :x_coord,
      :y_coord
    )
  end
end
