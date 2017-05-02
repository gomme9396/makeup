class CreateCusprofiles < ActiveRecord::Migration
  def change
    create_table :cusprofiles do |t|

      t.timestamps null: false
    end
  end
end
