FirstApp::Application.routes.draw do
  
  root :to => 'welcome#index', :as => :index

  match 'black' => 'welcome#black', :via => :get, :as => :black

end
