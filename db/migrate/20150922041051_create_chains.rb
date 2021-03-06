class CreateChains < ActiveRecord::Migration
  def change
    create_table :chains do |t|
      t.string :symbol
      t.text :data

      t.timestamps null: false
    end

    add_index :chains, :symbol
  end
end
