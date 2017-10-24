class AddProjectIdToProjectConnections < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_connections, :project, foreign_key: true
  end
end
