class CreateWorkInfos < ActiveRecord::Migration
  def change
    drop_table :work_infos
    create_table :work_infos do |t|
      t.integer :work_id
      t.string :name
      t.string :link
      t.string :description
      t.string :note
      t.string :lang

      t.timestamps null: false
    end
  end
end
