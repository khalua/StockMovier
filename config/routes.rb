R20130211StockMovie::Application.routes.draw do
  get '/welcome' => 'welcome#index' #superflous?

  get '/stock' => 'stock#search'
  get '/stock/query' => 'stock#query'
  get "/stock/results" => 'stock#results'

  get '/movie' => 'movie#search'
  get '/movie/query' => 'movie#query'
  get '/movie/results' => 'movie#results'

  root :to => 'welcome#index'

  # match ':controller(/:action(/:id))(.:format)'
end
