# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  hashed_password :string
#

class User < ApplicationRecord
  has_many :bids

  def authenticate(password)
    BCrypt::Password.new(self.hashed_password) == password
  end
  
  def password=(password)
    @password = password
    self.hashed_password = BCrypt::Password.create(password)
  end
  
  def password
    @password
  end
end
