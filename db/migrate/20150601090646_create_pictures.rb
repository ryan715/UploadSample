class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image
      t.string :image_cashe
      t.string :car_token

      t.timestamps
    end
  end
end
