class CreateLinkLangs < ActiveRecord::Migration
  def change
  	drop_table :link_langs
    create_table :link_langs do |t|
      t.string :link
      t.string :lang
      t.string :types

      t.timestamps null: false
    end
  end
end
