class User < ActiveRecord::Base

  validates :name, presence: true

  after_create :send_welcome_message
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties
  has_many :reservations
  has_many :reviews

  private

    def send_welcome_message
      UserMailer.signup_confirmation(self).deliver
    end

end
