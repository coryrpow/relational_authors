class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :published
      t.boolean :in_print
      t.boolean :translated_english
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
