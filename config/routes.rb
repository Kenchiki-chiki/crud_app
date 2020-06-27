Rails.application.routes.draw do
  # 一覧画面へのルーティング
  get '/users', to: 'users#index'

  # 新規投稿画面へのルーティング
  get '/users/new', to: 'users#new'

  # 新規登録するためのルーティング
  # <%= form_with model:@user, url: "/users", method: :post, local: true do |f| %>と対応している
  post '/users', to: 'users#create'

  get '/users/:id/edit', to: 'users#edit'

  patch '/users/:id', to: 'users#update'

  # 削除を行うためのルーティング
  # :idは変数のようなものだと思う
  # 削除ボタンを押したときに飛んでくるhttp://localhost:3000/user/1
  # などの最後の数字(特定のレコードのid)が:idに代入される
  delete '/users/:id', to: 'users#destroy'
end

