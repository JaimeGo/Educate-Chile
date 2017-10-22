class AddMethodologyChosenToMethodologyEvaluation < ActiveRecord::Migration[5.1]
  def change
  	add_column :methodology_evaluations, :methodology_chosen, :text
  end
end
