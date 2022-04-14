class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :content, default: "", null: false
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
