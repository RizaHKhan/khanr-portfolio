require 'rails_helper'

RSpec.describe "Portfolios", type: :request do
  describe 'GET portfolios' do
    it 'renders portfolios index page' do
      get '/portfolios'
      expect(response).to render_template(:index)
    end
  end
end
