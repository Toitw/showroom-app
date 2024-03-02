class CreateJoinTableCategoryLook < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :looks do |t|
      # t.index [:category_id, :look_id]
      # t.index [:look_id, :category_id]
    end
  end
end
