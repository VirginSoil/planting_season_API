PlantingSeasonApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :beds
      resources :plantings
    end
  end
end
