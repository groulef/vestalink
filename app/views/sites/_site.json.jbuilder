json.extract! site, :id, :reference, :name, :address, :zipcode, :city, :created_at, :updated_at
json.url site_url(site, format: :json)
