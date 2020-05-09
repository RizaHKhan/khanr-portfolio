require 'rails_helper'

RSpec.describe Portfolio, type: :model do
  describe '#validations' do
    it 'should create a portfolio successfully' do
      expect(create :portfolio).to be_valid
    end

    it 'should fail to create a portfolio without a title' do
      portfolio = build :portfolio, title: ''
      expect(portfolio).not_to be_valid
      expect(portfolio.errors.messages[:title]).to include("can't be blank")
    end

    it 'should fail to create a portfolio without a body' do
      portfolio = build :portfolio, body: ''
      expect(portfolio).not_to be_valid
      expect(portfolio.errors.messages[:body]).to include("can't be blank")
    end

    it 'should delete related dependent technology' do
      portfolio = create :portfolio
      technology = create :technology, portfolio_id: portfolio.id
      expect{ portfolio.destroy }.to change { Technology.count }
    end
  end
end
