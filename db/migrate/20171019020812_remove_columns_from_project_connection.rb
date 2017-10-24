class RemoveColumnsFromProjectConnection < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_connections, :questions, :string
    remove_column :project_connections, :answers, :string
  end
end
