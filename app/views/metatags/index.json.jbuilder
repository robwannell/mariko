json.array!(@metatags) do |metatag|
  json.extract! metatag, :id, :pagetitle, :keywords, :description
  json.url metatag_url(metatag, format: :json)
end
