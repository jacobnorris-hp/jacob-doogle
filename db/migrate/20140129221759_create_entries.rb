class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.references :definition

      t.timestamps
    end
  end
end
