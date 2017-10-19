class AddProjectConnectionIdToMethodologyEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_reference :methodology_evaluations, :project_connection, foreign_key: true
  end
end
