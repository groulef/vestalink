class CreateSite < ActiveRecord::Migration[6.0]
  def up
    create_table :sites do |t|
      t.string :reference
      t.string :name
      t.string :address
      t.integer :zipcode
      t.string :city
      
      t.timestamps
    end
  end

  def down
    drop_table :sites
  end
end
