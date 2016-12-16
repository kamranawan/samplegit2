json.extract! supplier, :id, :name, :phone_1, :phone_2, :address, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)