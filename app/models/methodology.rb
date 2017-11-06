class Methodology < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :methodology_evaluations
  has_and_belongs_to_many :projects
  has_many :reviews

  def review(value)
  end
  def upvote()
  end
  def downvote()
  end
end
