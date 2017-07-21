class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location
end
