class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :pizza_type

  validates :amount, presence: true, numericality: { greater_than: 0 }
end
