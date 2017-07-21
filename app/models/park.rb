class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  scope :search_name, -> (name_parameter) { where("lower(name) like ?", "%#{name_parameter.downcase}%")}

  scope :search_location, -> (location_parameter) { where("lower(location) like ?", "%#{location_parameter.downcase}%")}
  
  scope :random, -> (number_parameter) {Park.all.sample(number_parameter)}

end
