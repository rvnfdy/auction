# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :string
#  user_id        :integer
#  starting_price :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'saves given a valid Product' do
    product = Product.new(name: '', author: 'Nenek', price: 100, quantity: 10)
    expect(book.save).to be true
  end

  it 'does not save if price is negative' do
    book = Book.new(name: 'Buku', author: 'Nenek', price: -100, quantity: 10)
    expect(book.save).to be false
  end
end
