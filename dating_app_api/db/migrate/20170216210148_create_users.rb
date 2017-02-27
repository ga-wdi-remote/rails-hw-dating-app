class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :img
    end
  end
end
