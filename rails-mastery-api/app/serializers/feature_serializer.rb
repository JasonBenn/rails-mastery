class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :text, :description

  has_many :requirements
  embed :requirement_ids, include: true
end
