class GameSerializer < ActiveModel::Serializer
  has_many :passages
  attributes :id, :userId, :passageId, :speed, :accuracy
end
