class CreateVechiles < ActiveRecord::Migration
  def change
    create_table :vechiles do |t|
      t.string :name
      t.string :location
      t.references :user, index: true
      t.string :registration_no

      t.timestamps
    end
  end
end
