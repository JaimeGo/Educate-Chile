class CreateProjectConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :project_connections do |t|
      t.string :questions
      t.string :answers

      t.timestamps
    end
  end
end
