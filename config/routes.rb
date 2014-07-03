Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'
  get 'contact' => 'site#contact'

  post 'result' => 'url#create'
  get  'result' => 'url#index'
end
