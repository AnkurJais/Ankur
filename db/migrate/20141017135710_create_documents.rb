class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
