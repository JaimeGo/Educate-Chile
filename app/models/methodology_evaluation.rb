class MethodologyEvaluation < ApplicationRecord
  belongs_to :project_connection, optional: true
  belongs_to :methodology
end
