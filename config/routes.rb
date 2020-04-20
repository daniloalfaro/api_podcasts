# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :podcasts, only: %i[index destroy] do
        collection do
          get :search
          get :top20
          get :last20
        end
      end

      resources :genres, only: %i[index] do
        collection do
          get :search
          get :podcasts
        end
      end
    end
  end
end
