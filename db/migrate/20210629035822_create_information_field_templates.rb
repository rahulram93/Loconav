class CreateInformationFieldTemplates < ActiveRecord::Migration
  def change
    create_table :information_field_templates do |t|
      t.references :information_template, index: true
      t.string :field_name
      t.integer :position

      t.timestamps
    end
  end
end
