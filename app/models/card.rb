class Message
  include DataMapper::Resource

  property :id, Serial
  property :suit, String
  property :face, String
  property :facesuit, String

  belongs_to :deck
end