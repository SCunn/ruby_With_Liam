json.extract! item, :id, :make, :model, :image_url, :description, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
