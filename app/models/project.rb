class Project < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :methodologys
  has_one :project_connection, inverse_of: :project
  has_one :project_implementation
  has_one :project_communication
  has_one :project_evaluation
  def get_data_resume()
  end
end
