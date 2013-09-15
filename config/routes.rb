Forum::Application.routes.draw do

  resources :threads, :only => [:index]

  root :to => "threads#index"

end
