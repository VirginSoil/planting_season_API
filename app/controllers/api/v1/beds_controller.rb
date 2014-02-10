class Api::V1::BedsController < ApplicationController
  def index
    beds = Bed.all
    render json: beds
  end

  def show
    bed = Bed.find(params[:id])
    render json: bed
  end

  def create
    bed = Bed.new(bed_params)
    if bed.save

      render json: bed, status: 201
    else
      400
    end
  end

  def update
    bed = Bed.find(params[:id])
    bed.update_attributes(bed_params) if bed
    render json: bed
  end

  def destroy
    bed = Bed.find(params[:id])
    bed.destroy if bed
    200
  end

  def for_user
    beds = Bed.where(:user_id => params[:id])
    render json: beds.to_a
  end

  private

  def bed_params
    params.require(:bed).permit(:id, :name, :width, :depth, :zipcode, :notes, :user_id)
  end
end
