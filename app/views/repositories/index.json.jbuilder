json.array! @repositories do |repository|
  json.id repository.id
  json.name repository.name
  json.full_name repository.full_name
  json.description repository.description
  json.homepage repository.homepage
  json.created_at repository.created_at
  json.updated_at repository.updated_at
  json.owner repository.owner.login
  json.owner_url repository.owner.url
end