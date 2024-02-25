class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :look, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
