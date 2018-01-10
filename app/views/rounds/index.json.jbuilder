json.array!(@rounds) do |round|
  json.extract! round, :id, :private, :course_id, :holes, :notes, :course_id, :user_id
  json.url round_url(round, format: :json)
end
