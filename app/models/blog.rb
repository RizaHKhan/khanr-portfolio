class Blog < ApplicationRecord
  belongs_to :topic
  # Tell rails what attribute is the enum, and give it an object with what the "word" the number refers to.
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
end
