class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail_image

  # Self is a keyword here
  def self.vue
    where(subtitle: 'VueJS')
  end

  # Method 2, Scopes
  scope :ruby_on_rails_portfolio_item,-> { where(subtitle: 'VueJS') }
end
