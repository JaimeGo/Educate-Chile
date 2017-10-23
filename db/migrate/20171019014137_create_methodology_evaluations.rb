class CreateMethodologyEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :methodology_evaluations do |t|
      t.references :project, foreign_key: true
      t.references :methodology, foreign_key: true
      t.text :reason_1
      t.integer :utility_1
      t.integer :pertinence_1
      t.integer :relevance_1

      t.text :reason_2
      t.integer :utility_2
      t.integer :pertinence_2
      t.integer :relevance_2

      t.text :reason_3
      t.integer :utility_3
      t.integer :pertinence_3
      t.integer :relevance_3

      t.timestamps
    end
  end
end
