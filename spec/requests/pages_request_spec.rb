require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe 'GET home' do
    it 'renders the home page' do
      get '/'
      expect(response).to render_template(:home)
    end
  end

  describe 'GET about' do
    it 'renders about page' do
      get '/about'
      expect(response).to render_template(:about)
    end
  end

  describe 'GET contact' do
    it 'renders contact page' do
      get '/contact'
      expect(response).to render_template(:contact)
    end
  end
end
