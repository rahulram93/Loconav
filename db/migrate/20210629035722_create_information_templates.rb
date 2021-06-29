class CreateInformationTemplates < ActiveRecord::Migration
  def change
    create_table :information_templates do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
