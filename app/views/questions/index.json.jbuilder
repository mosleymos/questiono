json.array!(@questions) do |question|
  json.extract! question, :id, :subject, :subtopic_name
  json.url question_url(question, format: :json)
end
