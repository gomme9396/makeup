class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|

      t.text :name_artist
      t.text :phone_artist
      t.text :email_artist

      t.timestamps null: false
    end
  end
end
