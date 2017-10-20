class AddProjectIdToProjectChoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_choices, :project, foreign_key: true
  end
end
