FirstApp::Application.routes.draw do
  
  root :to => 'welcome#index'

  match 'black' => 'welcome#black', :via => :get, :as => :black

end
