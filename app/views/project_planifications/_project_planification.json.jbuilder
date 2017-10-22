json.extract! project_planification, :id, :name, :place, :startdate, :finishdate, :references, :created_at, :updated_at
json.url project_planification_url(project_planification, format: :json)
