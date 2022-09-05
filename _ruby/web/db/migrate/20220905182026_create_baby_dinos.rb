class CreateBabyDinos < ActiveRecord::Migration[7.0]
  def change
    create_table :baby_dinos do |t|
      # Specifies the column name -> dinosaur_id
      # Creates an index but no FK constraint
      # An explicit mapping to a table can be done by query or within the model via class_name
      t.belongs_to :dinosaur

      t.text :name

      t.timestamps
    end
  end
end
