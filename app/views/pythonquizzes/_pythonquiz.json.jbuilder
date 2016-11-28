json.extract! pythonquiz, :id, :question, :ans1, :ans2, :ans3, :ans4, :correctAns, :created_at, :updated_at
json.url pythonquiz_url(pythonquiz, format: :json)