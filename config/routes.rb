Rails.application.routes.draw do
  
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :projects, only: :index
  end

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :projects do
      resources :tasks
    end
  end


  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
