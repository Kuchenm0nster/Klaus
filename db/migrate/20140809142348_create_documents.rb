class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :doc_type
      t.references :professor
      t.references :semester
      t.references :lesson

      t.string :file
      t.integer :position
      t.timestamps
    end
  end
end
