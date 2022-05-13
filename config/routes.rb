# frozen_string_literal: true

Rails.application.routes.draw do
  resources :part_kits
  resources :toners
  resources :printer_models
  resources :printers, except: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'printers/:id/details', to: 'printers#details', as: 'details'

  # Defines the root path route ("/")
  root 'printers#index'
end
