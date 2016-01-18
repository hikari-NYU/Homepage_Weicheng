class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.text :author
      t.text :title
      t.text :time

      t.timestamps null: false
    end
  end
end
