get '/' do
  content_type :json
  settings.deck.cards.to_json
end

get '/deal.json' do
  content_type :json
  settings.deck.deal.to_json
end

get '/shuffle.json' do
  content_type :json
  settings.deck.shuffle.cards.to_json
end

get '/size.json' do
  content_type :json
  settings.deck.size.to_json
end
