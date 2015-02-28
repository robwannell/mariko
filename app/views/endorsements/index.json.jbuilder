json.array!(@endorsements) do |endorsement|
  json.extract! endorsement, :id, :firstname, :lastname
  json.url endorsement_url(endorsement, format: :json)
end
