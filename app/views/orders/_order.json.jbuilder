json.extract! order, :id, :table, :quantity, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
