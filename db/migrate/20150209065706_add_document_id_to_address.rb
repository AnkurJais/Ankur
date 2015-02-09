class AddDocumentIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :document_id, :integer
  end
end
