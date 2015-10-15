class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :glyphicon, :created_at, :updated_at
  has_many :categories
end
