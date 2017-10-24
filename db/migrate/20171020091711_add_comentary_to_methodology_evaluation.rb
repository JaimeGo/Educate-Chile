class AddComentaryToMethodologyEvaluation < ActiveRecord::Migration[5.1]
  def change
    add_column :methodology_evaluations, :comentary, :string
  end
end
