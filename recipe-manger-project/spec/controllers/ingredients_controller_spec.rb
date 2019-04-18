require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

  context 'GET #show' do
    it 'returns a success response' do
      post = Ingredient.create!(name: 'ingredient name', description:'ingredient description')
      get :show, params:{id: post.to_param}
      expect(response).to be_successful
    end
  end

  context 'GET #edit' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

  context 'GET #new' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

  context 'GET #create' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

  context 'GET #update' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end

  context 'GET #destroy' do
    it 'returns a success response' do
      expect(response).to be_successful
    end
  end
end
