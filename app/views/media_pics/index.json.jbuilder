json.array!(@media_pics) do |media_pic|
  json.extract! media_pic, :id, :title, :order, :image
  json.url media_pic_url(media_pic, format: :json)
end
