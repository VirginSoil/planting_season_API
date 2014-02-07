PlantingSeasonApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/plantings/for_bed/:id', to: 'plantings#for_bed', as: "for_bed_path"
      resources :beds
      resources :plantings
      resources :plants
      resources :gardens
    end
  end
end
