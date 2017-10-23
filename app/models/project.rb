class Project < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :methodologys
  has_one :project_connection, inverse_of: :project
  has_many :project_implementation
  has_one :project_communication
  has_one :project_evaluation
  has_one :project_choice
  def get_data_resume()
  end
end
