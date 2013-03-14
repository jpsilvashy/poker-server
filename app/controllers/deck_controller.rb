get '/' do
  set :deck, Deck.new

  random_name = [
    Forgery::Name.female_first_name,
    Forgery::Basic.color,
    Forgery::Address.street_name.split(" ").first
  ].join("-").downcase

  redirect random_name
end

get '/:game' do
  content_type :json
  settings.deck.cards.to_json
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

