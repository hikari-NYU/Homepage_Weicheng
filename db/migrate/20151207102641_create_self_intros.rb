class CreateSelfIntros < ActiveRecord::Migration
  def change
    create_table :self_intros do |t|
      t.string :name
      t.string :university
      t.string :email
      t.string :phone
      t.string :intro

      t.timestamps null: false
    end
  end
end
