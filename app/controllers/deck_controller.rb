get '/' do
  content_type :json
  settings.deck.cards.to_json
end

get '/:game' do
  set :deck, Deck.new
end

get '/:game/deal.json' do
  content_type :json
  settings.deck.deal.to_json
end

get '/:game/shuffle.json' do
  content_type :json
  settings.deck.shuffle.cards.to_json
end

get '/:game/size.json' do
  content_type :json
  settings.deck.size.to_json
end

get '/:game/burn.json' do
  content_type :json
  settings.deck.burn(params[:card])
  settings.deck.cards.to_json
end

