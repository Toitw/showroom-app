class CreateLookSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :look_schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.references :look, null: false, foreign_key: true
      t.date :scheduled_date

      t.timestamps
    end
  end
end
