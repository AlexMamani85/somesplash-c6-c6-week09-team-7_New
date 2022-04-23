class AddDefaultValueToCounters < ActiveRecord::Migration[7.0]
  def change
    change_column_default(:photos, :comments_count, from: nil, to: 0)
    change_column_default(:categories, :photos_count, from: nil, to: 0)
  end
end
