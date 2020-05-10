require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe '#validations' do
    it 'should create a blog' do
      expect(build :blog, topic_id: 1).to be_valid
    end
  end
end