class CreateMapatestiranjas < ActiveRecord::Migration[6.0]
  def change
    create_table :mapatestiranjas do |t|

      t.timestamps
    end
  end
end
