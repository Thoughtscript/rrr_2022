class CreateBabyDinos < ActiveRecord::Migration[7.0]
  def change
    create_table :baby_dinos do |t|
      t.text :name

      t.timestamps
    end
  end
end
