class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :token
      t.text :ips
      t.integer :visitors_count

      t.timestamps
    end
  end
end
