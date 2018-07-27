class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :uncommon_password,
  devise :database_authenticatable, :registerable, :lockable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable,
    :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  # Relationships
  has_many :provider
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/uploads/:style/avatar.png"

  # Validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # validates :phone, presence: true
  validates :email,  presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }
  validates :password,  presence: true,
                        length: { minimum: 6 }

  def fullname
    "#{self.first_name} #{last_name}"
  end

  def self.from_omniauth(auth)
    if self.where(email: auth.info.email).exists?
      return_user = self.where(email: auth.info.email).first
      return_user.provider = auth.provider
      return_user.uid = auth.uid
    else
      return_user = self.create do |user|
       user.first_name = auth.info.first_name
       user.last_name = auth.info.last_name
       user.email = auth.info.email
       user.phone = ""
       user.password = Devise.friendly_token[0,20]
       # user.name = auth.info.name   # assuming the user model has a name
       # user.image = auth.info.image # assuming the user model has an image
       # If you are using confirmable and the provider(s) you use validate emails,
       # uncomment the line below to skip the confirmation emails.
       user.skip_confirmation!
       user.save!
      end
    end

    return_user
  end

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.first_name = auth.info.first_name
  #     user.last_name = auth.info.last_name
  #     user.email = auth.info.email
  #     user.phone = ""
  #     user.password = Devise.friendly_token[0,20]
  #     # user.name = auth.info.name   # assuming the user model has a name
  #     # user.image = auth.info.image # assuming the user model has an image
  #     # If you are using confirmable and the provider(s) you use validate emails,
  #     # uncomment the line below to skip the confirmation emails.
  #     user.skip_confirmation!
  #     user.save!
  #     # sign_in user
  #   end
  # end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  private
  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end
