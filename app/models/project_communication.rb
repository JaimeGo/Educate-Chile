class ProjectCommunication < ApplicationRecord
    belongs_to :project

    def communicate(message)
    end
end
