class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :text, :description

  has_many :requirements
end
