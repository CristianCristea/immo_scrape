# frozen_string_literal: true

Rails.application.routes.draw do
  resources :real_estates
  resources :users
  root to: 'pages#home'
end
