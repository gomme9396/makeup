class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      
      t.string :name_artist
      t.string :phone_artist
      t.string :email_artist
      
      t.timestamps null: false
    end
  end
end
