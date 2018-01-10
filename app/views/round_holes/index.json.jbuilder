json.array!(@round_holes) do |round_hole|
  json.extract! round_hole, :id, :round_id, :course_id, :score, :strokes, :putts, :notes, :round, :course_hole_id
  json.url round_hole_url(round_hole, format: :json)
end
