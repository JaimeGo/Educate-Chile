class RemoveColumnsFromMethodologyEvaluations < ActiveRecord::Migration[5.1]
  def change
    remove_reference :methodology_evaluations, :project, foreign_key: true
  end
end
