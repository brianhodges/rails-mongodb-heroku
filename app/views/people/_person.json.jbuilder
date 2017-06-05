json.extract! person, :id, :first_name, :last_name, :email, :btc_address, :ip_address, :created_at, :updated_at
json.url person_url(person, format: :json)
