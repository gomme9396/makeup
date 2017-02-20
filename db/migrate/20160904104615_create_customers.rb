class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      
      t.string :name_customer
      t.string :email_customer

      t.timestamps null: false
    end
  end
end
