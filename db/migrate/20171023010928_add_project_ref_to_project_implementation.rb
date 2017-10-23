class AddProjectRefToProjectImplementation < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_implementations, :project, foreign_key: true
  end
end
