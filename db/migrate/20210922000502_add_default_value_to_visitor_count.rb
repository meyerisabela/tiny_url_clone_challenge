class AddDefaultValueToVisitorCount < ActiveRecord::Migration[6.1]
  def change
    change_column :urls, :visitors_count, :integer, default: 0
  end
end
