class CreateMoneta < ActiveRecord::Migration[7.0]
  def change
    create_table :moneta do |t|
      t.string :flag
      t.string :nominal
      t.string :nr_kat
      t.string :stop
      t.integer :rok

      t.timestamps
    end
  end
end
