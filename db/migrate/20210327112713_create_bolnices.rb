class CreateBolnices < ActiveRecord::Migration[6.0]
  def change
    create_table :bolnices do |t|
      t.string :naziv_ustanove
      t.string :broj
      t.string :lokacija
      t.string :vrijeme_cekanja
      t.string :radno_vrijeme
      t.string :odijeljenje

      t.timestamps
    end
  end
end
