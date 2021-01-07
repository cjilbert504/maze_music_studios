# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#home'
  resources :rooms
end
