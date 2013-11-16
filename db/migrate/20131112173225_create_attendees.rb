class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :dinner_id
      t.integer :guest_id
    end
  end
end
