json.extract! user_project, :id, :is_leader, :user_id, :project_id, :time_assigned, :created_at, :updated_at
json.url user_project_url(user_project, format: :json)
