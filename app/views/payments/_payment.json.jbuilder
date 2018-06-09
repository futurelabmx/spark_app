json.extract! payment, :id, :time, :amount, :location, :created_at, :updated_at
json.url payment_url(payment, format: :json)
