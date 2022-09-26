class DropRegions < ActiveRecord::Migration[6.1]
  def up
    drop_table :regions
  end
  def down
    create_table :regions do |t|
      t.string :name
      t.timestamps
    end
  end
end
