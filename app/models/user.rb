class User < ApplicationRecord
  has_secure_password
  has_many :cards
  has_many :addresses

  has_many :transactions
  has_many :charities, through: :transactions

  has_many :supports
  has_many :supported_charities, through: :supports, source: :charity
end
