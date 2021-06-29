class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.integer :entity_id
      t.string :entity_type
      t.references :information_template, index: true

      t.timestamps
    end
  end
end
