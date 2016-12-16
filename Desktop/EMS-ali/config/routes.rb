Rails.application.routes.draw do
  resources :expences
  resources :stitches
  resources :machines
  devise_for :users
  resources :clippings
  resources :orders
  resources :designs
  resources :suppliers
  resources :party_members
  resources :parties
  resources :employs
  get 'dashbord' , to: 'dashbord#index'
  root  to: 'dashbord#index'
 
  get "attandances" , to: "attandances#index"
  get 'register' , to: "attandances#register"
  get 'mark' , to: "attandances#mark"
  resources :purchasings
  resources :salaries
  get 'this_month_salaries' , to: 'salaries#this_month_salaries'
  get '/search_pic' , to: "employs#search_pic"
  
end
