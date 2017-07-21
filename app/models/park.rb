class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  scope :search, -> (name_parameter) { where("lower(name) like ?", "%#{name_parameter.downcase}%")}

  scope :random, -> (number_parameter) {Park.all.sample(number_parameter)}

end
