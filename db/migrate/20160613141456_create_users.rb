class CreateUsers < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :uid
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4a
      t.string :s4b
      t.string :s4c
      t.string :s5a
      t.string :s5b
      t.string :s5c
      t.string :s6a
      t.string :s6b
      t.string :s6c
      t.string :s7a
      t.string :s7b
      t.string :s7c
      t.string :s8a
      t.string :s8b
      t.string :s8c
      t.string :s9
      t.string :s10

      t.timestamps null: false
    end
  end
end
