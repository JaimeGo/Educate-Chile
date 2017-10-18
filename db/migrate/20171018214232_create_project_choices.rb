class CreateProjectChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :project_choices do |t|
      t.text :desicion
      t.string :porqueA
      t.string :porqueB
      t.string :porqueC

      t.timestamps
    end
  end
end
