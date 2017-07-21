class Park < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  scope :search, -> (name_parameter) { where("lower(name) like ?", "%#{name_parameter.downcase}%")}


    # def self.random
    #   if (c = count) != 0
    #     find(:first, :offset =>rand(c))
    #   end
    # end



end
