class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.string :celeb_name
      t.string :celeb_url
    end
  end
end
