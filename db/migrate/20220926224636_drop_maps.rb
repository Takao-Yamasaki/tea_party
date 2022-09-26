class DropMaps < ActiveRecord::Migration[6.1]
  def up
    drop_table :maps
  end

  def down
    create_table "maps", force: :cascade do |t|
      t.string "address"
      t.float "latitude"
      t.float "longitude"
      t.timestamps
    end
  end
end
