class Review < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :property
  belongs_to :user

  # def self.list
  #   @current_reviews = Review.where(property_id: @property.id)
  # end
end
