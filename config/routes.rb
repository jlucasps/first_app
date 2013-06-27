FirstApp::Application.routes.draw do
  
  devise_for :users

  root :to => 'welcome#index', :as => :index
  match 'about' => 'welcome#about', :as => :about
  match 'contact' => 'welcome#contact', :as => :contact

  match 'black' => 'welcome#black', :via => :get, :as => :black

  resources :users do 
    resources :bills
  end

  match 'new_bill' => 'bills#new', :as => :new_bill
  match 'create_bill' => 'bills#create_bill', :as => :create_bill
end
