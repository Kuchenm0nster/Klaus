class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :short_name
      t.string :name

      t.timestamps
    end
  end
end
