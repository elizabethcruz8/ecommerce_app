class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :orders, through: :carted_products
  has_many :shoes, through: :carted_products
  has_many :carted_products
end



