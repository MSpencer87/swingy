json.array!(@courses) do |course|
  json.extract! course, :id, :name, :par, :rating, :holes, :notes
  json.url course_url(course, format: :json)
end
