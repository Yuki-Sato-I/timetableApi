Rails.application.routes.draw do
  get 'apis/index', to:'apis#index'
  get 'apis/show/:day/:hours/:faculty', to: 'apis#show'
  get 'apis/voice_index/:timetable_id', to: 'apis#voice_index'
  post 'apis/create_timetable', to: 'apis#create_timetable'
  post 'apis/create_evaluation', to: 'apis#create_evaluation'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
