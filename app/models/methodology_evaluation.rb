class MethodologyEvaluation < ApplicationRecord
  belongs_to :project_connection, optional: true, inverse_of: :methodology_evaluations
  belongs_to :methodology
end
