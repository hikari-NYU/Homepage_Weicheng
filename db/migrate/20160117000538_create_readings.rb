class CreateReadings < ActiveRecord::Migration
  def change
  	drop_table :readings
    create_table :readings do |t|
      t.text :author
      t.text :title
      t.datetime :create_at

      t.timestamps null: false
    end
  end
end
