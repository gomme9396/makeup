class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :name_customer
      t.text :email_customer

      t.timestamps null: false
    end
  end
end
