# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'rooms#index'
  resources :rooms
end
