class Transaction < ApplicationRecord
  belongs_to :donor
  belongs_to :charity
end