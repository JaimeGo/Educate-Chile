class ProjectConnection < ApplicationRecord
    belongs_to :project

    def request_connection()
    end
end
