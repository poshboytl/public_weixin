PublicWeixin::Application.routes.draw do
  root to: "messages#index"

  scope "/b/:bizid/m/:msgid" do
    resources :votes, only: [:create, :destroy]
  end
end
