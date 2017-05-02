class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|

      t.string :c_writer
      t.string :c_email
      t.string :c_name
      t.integer :c_price
      t.string :c_intro
      t.string :c_curri
      t.integer :c_oneday
      t.integer :c_group
      t.string :c_material
      t.integer :c_time


      t.timestamps null: false
    end
  end
end
