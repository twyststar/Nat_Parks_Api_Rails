Rails.application.routes.draw do

    # constraints subdomain: 'api' do
    # scope module: 'api' do
    namespace :api do
      namespace :v1 do
        resources :parks
      end
    end
  # end
end
