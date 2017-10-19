class AddColumnsToProjectConnection < ActiveRecord::Migration[5.1]
  def change
    add_column :project_connections, :needs, :text
    add_column :project_connections, :ideas, :text
  end
end
