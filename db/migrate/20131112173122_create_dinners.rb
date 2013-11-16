class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.string :location
      t.string :date
      t.string :time
      t.text :details
      t.integer :chef_id
    end
  end
end
