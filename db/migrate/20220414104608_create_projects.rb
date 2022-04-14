class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, default: "", null: false
      t.text :description, default: "", null: false
      t.references :creator, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
