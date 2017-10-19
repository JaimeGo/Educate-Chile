class CreateMethodologyEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :methodology_evaluations do |t|
      t.references :project, foreign_key: true
      t.references :methodology, foreign_key: true
      t.text :reason
      t.integer :utility
      t.integer :pertinence
      t.integer :relevance

      t.timestamps
    end
  end
end
