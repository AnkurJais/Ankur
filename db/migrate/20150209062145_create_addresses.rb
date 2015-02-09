class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :document_id
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
