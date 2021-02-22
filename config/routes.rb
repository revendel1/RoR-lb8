Rails.application.routes.draw do
  get 'mersen/input'
  get 'mersen/view'
  root 'mersen#input'
end
