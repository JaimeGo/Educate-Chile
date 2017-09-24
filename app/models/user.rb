class User < ApplicationRecord
    has_many: projects
    has_many: project_reviews
    has_many: methodology_reviews
end
