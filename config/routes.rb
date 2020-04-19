# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :podcasts, only: %i[destroy] do
        collection do
          get :search
        end
      end
    end
  end
end
