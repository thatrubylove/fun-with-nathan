class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :names
      t.datetime :birthdate
      t.integer :phone_number

      t.timestamps
    end
  end
end
