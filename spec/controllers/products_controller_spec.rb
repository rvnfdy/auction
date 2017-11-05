require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#index' do
    it 'does it successfully' do
      get :index
      expect(response).to have_http_status :ok
    end
  end

  describe '#show' do
    it 'does it successfully' do
      user = User.create(id:1, username:'ryvanfirdy')
      product = Product.create(name:'Iphone 7', user_id: user.id, starting_price: 499)
      get :show, params: { id: product.id }
      expect(response).to have_http_status :ok
    end
  end

  describe '#create' do
    it 'does it successfully, with a product created' do
      user = User.create(id:1, username:'ryvanfirdy')
      product_params = { name: 'Iphone 7', user_id: user.id, starting_price: 49 }
      post :create, params: { product: product_params }

      expect(Product.where(product_params).length).to be 1
      expect(response).to redirect_to products_path
    end
  end

  describe 'new' do
    it 'does it successfully, with a product created' do
      user = User.create(id:1, username:'ryvanfirdy')
      product_params = { name: 'Iphone 7', user_id: user.id, starting_price: 49 }
      post :create, params: { product: product_params }

      expect(Product.where(product_params).length).to be 1
      expect(response).to redirect_to products_path
    end
  end


end
