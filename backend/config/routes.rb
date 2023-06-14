Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # api/v1/auth/storesとapi/v1/auth/employersの認証ルートの設定。
      mount_devise_token_auth_for 'Store', at: 'auth/stores', controllers: {
        registrations: 'api/v1/auth/registrations'}
      mount_devise_token_auth_for 'Employer', at: 'auth/employers', controllers: {
        registrations: 'auth/registrations'}
    end
  end
end
