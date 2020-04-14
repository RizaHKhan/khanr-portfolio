class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(width: '50')
  end
end
