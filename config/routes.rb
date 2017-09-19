Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    confirmations: "users/confirmations",
    passwords: "users/passwords",
    registrations: "users/registrations",
    unlocks: "users/unlocks",
    omniauth: "users/omniauth_callbacks"
  }
end
