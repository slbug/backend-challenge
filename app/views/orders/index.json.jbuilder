json.array! current_user.orders do |order|
  json.id order.id
  json.total_price order.total_price
  json.created_at order.created_at
end
