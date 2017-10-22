# frozen_string_literal: true

# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  product_id :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bids_on_product_id  (product_id)
#  index_bids_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (user_id => users.id)
#

class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :product
end
