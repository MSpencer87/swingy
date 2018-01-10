json.array!(@tees) do |tee|
  json.extract! tee, :id, :coursehole_id, :pro, :mens, :womens, :coursehole_id
  json.url tee_url(tee, format: :json)
end
