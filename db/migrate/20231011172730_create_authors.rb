class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :born
      t.boolean :alive

      t.timestamps
    end
  end
end
