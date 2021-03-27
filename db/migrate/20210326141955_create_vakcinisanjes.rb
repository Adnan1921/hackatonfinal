class CreateVakcinisanjes < ActiveRecord::Migration[6.0]
  def change
    create_table :vakcinisanjes do |t|
      t.string :ime
      t.string :jmbg
      t.string :knjizica
      t.datetime :datum

      t.timestamps
    end
  end
end
