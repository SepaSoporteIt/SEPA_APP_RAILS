json.extract! expiration, :id, :companyId, :employeeId, :studyId, :start_date, :end_date, :status, :comments, :created_at, :updated_at
json.url expiration_url(expiration, format: :json)
