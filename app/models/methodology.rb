class Methodology < ApplicationRecord
    has_and_belongs_to_many :project
    has_many :reviews
    def review(value)
    end
    def upvote()
    end
    def downvote()
    end
end
