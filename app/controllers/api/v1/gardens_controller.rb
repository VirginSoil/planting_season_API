class Api::V1::GardensController < ApplicationController
  def index
    gardens = Garden.all
    render json: gardens
  end

  def show
    garden = Garden.find(params[:id])
    render json: garden
  end

  def create
    garden = Garden.new(garden_params)
    if garden.save
      render json: garden
    else
      400
    end
  end

  def update
    garden = Garden.find(params[:id])
    garden.update_attributes(garden_params) if garden
    render json: garden
  end

  def destroy
    garden = Garden.find(params[:id])
    garden.destroy if garden
    200
  end

  private

  def garden_params
    params.require(:garden).permit(:user_id, :zone, :text_notifications, :email_notifications, :phone_notifications)
  end
end
