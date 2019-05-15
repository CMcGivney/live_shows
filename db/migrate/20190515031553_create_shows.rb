class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :band
      t.string :genre
      t.string :date
      t.string :time
      t.integer :price

      t.timestamps
    end
  end
end
