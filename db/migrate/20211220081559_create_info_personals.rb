class CreateInfoPersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :info_personals do |t|
      t.integer :idUser
      t.string :city
      t.string :state
      t.string :country
      t.string :fav_charecter
      t.string :fav_comic

      t.timestamps
    end
  end
end
