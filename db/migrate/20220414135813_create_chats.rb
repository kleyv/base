class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.string :name, default: "", null: false
      t.string :chatable_type, default: "", null: false
      t.integer :chatable_id, default: 0, null: false

      t.timestamps
    end
  end
end
