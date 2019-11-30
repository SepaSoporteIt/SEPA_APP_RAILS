json.extract! employee, :id, :name, :email, :tlf, :tipo, :created_at, :updated_at
json.url employee_url(employee, format: :json)
