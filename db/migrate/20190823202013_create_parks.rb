class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
        t.text :directions
        t.text :description
        t.string :name
        t.string :states
        t.string :website
      end
    end
  end
