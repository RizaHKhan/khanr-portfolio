require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe 'GET /blogs' do
    it 'renders the index template' do
      get '/blogs'
      expect(response).to render_template(:index)
    end
  end
end
