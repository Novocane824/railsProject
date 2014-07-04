Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms'   => 'site#terms'
  get 'contact' => 'site#contact'

  post 'result' => 'request#create'
  get  'result' => 'request#index'
end
