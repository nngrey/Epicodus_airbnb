class Property < ActiveRecord::Base
  validates :description, :presence => true
  validates :price, :presence => true
end
