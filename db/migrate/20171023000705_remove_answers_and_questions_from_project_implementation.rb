class RemoveAnswersAndQuestionsFromProjectImplementation < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_implementations, :questions, :string
    remove_column :project_implementations, :answers, :string
  end
end
