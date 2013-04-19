PublicWeixin::Application.routes.draw do
  root to: "messages#index"

  scope "/b/:bizid/m/:msgid" do
    resources :votes, only: [:create] do
      collection do

      end
    end
    match "/votes" => "votes#destroy", via: 'delete'
  end
end
