class User < ApplicationRecord
    has_many: projects
    has_many: project_reviews
    has_many: methodology_reviews

    def review_project()
    end
    def review_methodology()
    end
    def follow()
    end
    
end
