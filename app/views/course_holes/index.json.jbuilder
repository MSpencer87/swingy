json.array!(@course_holes) do |course_hole|
  json.extract! course_hole, :id, :course_id, :number, :par, :distance, :rating, :notes, :course_id
  json.url course_hole_url(course_hole, format: :json)
end
