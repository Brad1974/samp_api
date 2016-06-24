class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
