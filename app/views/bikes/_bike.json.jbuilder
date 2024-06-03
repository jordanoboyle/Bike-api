# json.extract! bike, :id, :created_at, :updated_at
# json.url bike_url(bike, format: :json)

json.id bike.id
json.name bike.name
json.brand bike.brand
json.price bike.price
json.image_url bike.image_url
json.created_at bike.created_at
json.updated_at bike.updated_at
