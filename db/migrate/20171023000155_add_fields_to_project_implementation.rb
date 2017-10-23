class AddFieldsToProjectImplementation < ActiveRecord::Migration[5.1]
  def change
    add_column :project_implementations, :day, :date
    add_column :project_implementations, :observations, :text
    add_column :project_implementations, :advances, :text
    add_column :project_implementations, :conflicts, :text
    add_column :project_implementations, :new_ideas, :text
  end
end
