class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  accepts_nested_attributes_for :order_items

  enum status: [:created, :in_progress, :completed]

  default_scope -> { order(created_at: :desc) }

  validate :has_at_least_one_order_item

  def total_price
    order_items.joins(:pizza_type).sum('amount * pizza_types.price')
  end

  private

  def has_at_least_one_order_item
    errors.add(:order_items, 'missing') if order_items.blank?
  end
end
