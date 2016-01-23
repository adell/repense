json.array!(@classroms) do |classrom|
  json.extract! classrom, :id, :student_id, :course_id
  json.url classrom_url(classrom, format: :json)
end
