module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(width:)
    "https://place-hold.it/#{width}"
  end
end