class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body

  mount_uploader :thumbnail_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  mount_uploader :second_image, PortfolioUploader
  mount_uploader :third_image, PortfolioUploader

  # Self is a keyword here, Method 1
  def self.vue
    where(subtitle: 'VueJS')
  end

  # Method 2, Scopes
  scope :ruby_on_rails_portfolio_item,-> { where(subtitle: 'VueJS') }

  def self.by_position
    order('position ASC')
  end
end
