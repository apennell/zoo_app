class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name

      t.timestamps null: false
    end

    change_table :animals do |t|
      t.belongs_to :exhibit
    end

  end
end
