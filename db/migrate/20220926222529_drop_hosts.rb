class DropHosts < ActiveRecord::Migration[6.1]
  def up
    drop_table :hosts
  end

  def down
    cleate_table :hosts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image_url
      t.string :password
      t.timestamps
    end
  end
end
