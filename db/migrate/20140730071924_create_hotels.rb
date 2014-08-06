class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end