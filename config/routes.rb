# typed: false
# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :ideas

  root "home#index"
end
