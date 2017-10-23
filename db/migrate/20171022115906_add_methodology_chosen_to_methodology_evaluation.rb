class AddMethodologyChosenToMethodologyEvaluation < ActiveRecord::Migration[5.1]
  def change
  	add_column :methodology_evaluations, :methodology_chosen_1, :text
  	add_column :methodology_evaluations, :methodology_chosen_2, :text
  	add_column :methodology_evaluations, :methodology_chosen_3, :text
  end
end
