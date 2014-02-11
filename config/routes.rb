PlantingSeasonApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/plantings/for_bed/:id', to: 'plantings#for_bed', as: "for_bed_path"
      get '/beds/for_user/:id', to: 'beds#for_user', as: "for_user_path"
      get '/beds/default_for_user/:id', to: 'beds#default_for_user', as: "default_for_user_path"
      resources :beds

      get '/plantings/by_coordinates/', to: 'plantings#by_coordinates', as: 'coordinates_planting_path'
      delete '/plantings/', to: 'plantings#destroy', as: 'destroy_planting_path'
      resources :plantings, except: [:destroy]
      resources :plants
      resources :gardens
    end
  end
end
