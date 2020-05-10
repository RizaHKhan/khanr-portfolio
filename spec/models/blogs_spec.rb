require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe '#validations' do
    it 'should create a blog' do
      expect(build :blog, topic_id: 1).to be_valid
    end

    it 'should fail to create a blog with missing title' do
      expect(build :blog, topic_id: 1, title: '').not_to be_valid
    end

    it 'should fail to create a blog with missing body' do
      expect(build :blog, topic_id: 1, body: '').not_to be_valid
    end

    it 'should fail to create a blog with missing topic_id' do
      expect(build :blog).not_to be_valid
    end
  end

  describe '#methods' do
    it 'should show the last blog first per default scope' do
      topic = create :topic
      blog1 = create :blog, topic_id: topic.id
      blog2 = create :blog, topic_id: topic.id
      expect(Blog.first.id).to eq(blog2.id)
    end
  end
end