class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :experience, null: false, foreign_key: true
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
