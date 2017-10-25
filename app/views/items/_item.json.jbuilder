json.extract! item, :id, :name, :description, :type, :price, :user_id, :image_data, :created_at, :updated_at
json.url item_url(item, format: :json)
