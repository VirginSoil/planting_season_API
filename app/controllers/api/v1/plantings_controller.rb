class Api::V1::PlantingsController < ApplicationController

  def index
    plantings = Planting.all
    render json: plantings
  end

  def show
    planting = Planting.find(params[:id])
    render json: planting
  end

  def by_coordinates
    planting = Planting.find_by(planting_params)
    render json: planting
  end

  def update_by_coordinates
    planting = found_planting
    if planting.harvested
      planting.update_attributes(harvested: false)
    else
      planting.update_attributes(harvested: true)
    end
    render json: planting
  end

  def create
    if found_planting
      render :json => "You can't plant that much in me gurl!", :status => 422
      return
    end
    attributes = planting_params.merge(:planting_date => 0.second.ago)
    planting = Planting.new(attributes)
    plant = Plant.find_by(slug: params["planting"]["plant_id"].parameterize)
    planting.update_attributes(plant_id: plant.id, slug: plant.slug)

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
    planting = Planting.find_by(planting_params)
    planting.destroy if planting
    render :json => { :body => 'success!' }, :status => 200
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

  def found_planting
     Planting.find_by(
      :bed_id => params[:planting][:bed_id],
      :x_coord => params[:planting][:x_coord],
      :y_coord => params[:planting][:y_coord])
  end
end
