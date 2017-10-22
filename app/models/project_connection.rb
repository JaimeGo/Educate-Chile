class ProjectConnection < ApplicationRecord
	
    belongs_to :project
    has_many   :methodology_evaluations, dependent: :destroy, inverse_of: :project_connection

    accepts_nested_attributes_for :methodology_evaluations,
                                  allow_destroy: true
end
