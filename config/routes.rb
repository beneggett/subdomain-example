Rails.application.routes.draw do

  constraints(Subdomain) do
    root to: 'home#show', as: :program_root
  end

  root to: 'home#index'
end
