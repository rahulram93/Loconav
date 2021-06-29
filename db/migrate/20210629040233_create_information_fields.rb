class CreateInformationFields < ActiveRecord::Migration
  def change
    create_table :information_fields do |t|
      t.string :field_value
      t.references :information_field_template, index: true

      t.timestamps
    end
  end
end
