require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'should create a user' do
      expect(build :user).to be_valid
    end

    it 'should fail without email' do
      user = build :user, email: ''
      expect(user).not_to be_valid
      expect(user.errors.messages[:email]).to include("can't be blank")
    end

    it 'should fail without password' do
      user = build :user, password: ''
      expect(user).not_to be_valid
      expect(user.errors.messages[:password]).to include("can't be blank")
    end
  end

  describe '#user methods' do
    it 'should return the first name when creating a new user' do
      user = build :user, name: 'First Last'
      expect(user.first_name).to eq('First')
    end

    it 'should return the last name when creating a new user' do
      user = build :user, name: 'First Last'
      expect(user.last_name).to eq('Last')
    end
  end
end