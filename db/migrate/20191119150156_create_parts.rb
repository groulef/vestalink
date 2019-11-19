class CreateParts < ActiveRecord::Migration[6.0]
  def up
    create_table :parts do |t|
      t.string :reference
      t.string :type_designation

      t.references :site
      t.timestamps
    end
  end

  def down
    drop_table :parts
  end
end
