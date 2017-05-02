class CreateConprofiles < ActiveRecord::Migration
  def change
    create_table :conprofiles do |t|

      t.string :conp_intro
      t.integer :conp_mon_able
      t.string :conp_mon_time
      t.integer :conp_tue_able
      t.string :conp_tue_time
      t.integer :conp_wed_able
      t.string :conp_wed_time
      t.integer :conp_thu_able
      t.string :conp_thu_time
      t.integer :conp_fri_able
      t.string :conp_fri_time
      t.integer :conp_sat_able
      t.string :conp_sat_time
      t.integer :conp_sun_able
      t.string :conp_sun_time


      t.timestamps null: false
    end
  end
end
