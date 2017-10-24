class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :projects
    has_many :project_reviews
    has_many :methodology_reviews

    def review_project()
    end
    def review_methodology()
    end
    def follow()
    end

end
