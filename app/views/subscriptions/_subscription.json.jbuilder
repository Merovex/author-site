json.extract! subscription, :id, :email, :user_id, :confirmation_token, :confirmed_at, :confirmation_set_at, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
