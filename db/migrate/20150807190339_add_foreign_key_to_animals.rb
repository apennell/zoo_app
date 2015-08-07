class AddForeignKeyToAnimals < ActiveRecord::Migration
  def change
    change_table :animals do |t|
      t.references :user
    end

    add_foreign_key :animals, :users
  end
end
