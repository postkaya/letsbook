class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable,
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  mount_uploader :avatar, AvatarUploader

  # Relationships
  has_many :provider

  # Validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email,  presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }

  def fullname
    "#{self.first_name} #{last_name}"
  end

end
