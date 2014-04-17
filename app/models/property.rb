class Property < ActiveRecord::Base
  validates :description, :presence => true
  validates :price, :presence => true

  belongs_to :user
  has_many :reservations

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end