json.extract! user, :id, :name, :is_sent_mail, :created_at, :updated_at
json.url user_url(user, format: :json)
