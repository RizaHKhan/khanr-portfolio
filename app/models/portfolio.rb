class Portfolio < ApplicationRecord
  has_many :technologies
  includes Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail_image

  # Self is a keyword here, Method 1
  def self.vue
    where(subtitle: 'VueJS')
  end

  # Method 2, Scopes
  scope :ruby_on_rails_portfolio_item,-> { where(subtitle: 'VueJS') }

  after_initialize :set_defaults

  def set_defaults
    # The double pipes say, if the user loads an image, do not override, otherwise override with these:
    self.main_image ||= Placeholder.image_generator(width: '550')
    self.thumbnail_image ||= Placeholder.image_generator(width: '100')
  end
end
