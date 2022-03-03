json.id @order.id
json.order_items do
  json.array! @order.order_items do |order_item|
    json.pizza_type order_item.pizza_type.name
    json.price order_item.pizza_type.price
    json.amount order_item.amount
    json.total_price order_item.pizza_type.price * order_item.amount
  end
end
json.total_price @order.total_price
json.created_at @order.created_at
