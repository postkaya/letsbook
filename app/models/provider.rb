class Provider < ApplicationRecord
  before_save :capitalize_word
  before_save :add_slug

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  belongs_to :subscription
  belongs_to :provider_type
  has_many :gallery
  has_many :working_hour

  validates :name,        presence: true,
                          uniqueness: { case_sensitive: false }
  validates :address,     presence: true
  validates :country,     presence: true
  validates :state,       presence: true
  validates :city,       presence: true

  def capitalize_word
    self.name = name.split.map(&:capitalize).join(' ')
  end

  def add_slug
    self.slug = self.name.to_s.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end
end
