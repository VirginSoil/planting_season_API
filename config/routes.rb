PlantingSeasonApi::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :beds
    end
  end
end
