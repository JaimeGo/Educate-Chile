class ProjectPlanification < ApplicationRecord
    belongs_to :project
    has_many :project_resources, dependent: :destroy
    accepts_nested_attributes_for :project_resources, allow_destroy: true, reject_if: :all_blank
    has_many :project_fiffusions, dependent: :destroy
    accepts_nested_attributes_for :project_resources, allow_destroy: true, reject_if: :all_blank

end
