class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.string :text
      t.references :entry, index: true

      t.timestamps
    end
  end
end
