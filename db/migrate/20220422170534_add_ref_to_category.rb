class AddRefToCategory < ActiveRecord::Migration[7.0]
  def up
    change_column_null :photos, :category_id, true
  end
  def down
    change_column_null :photos, :category_id, false
  end
end
