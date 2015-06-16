class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :adress
      t.integer :zipcode
      t.string :city
      t.string :country
      t.integer :surface
      t.string :agentName
      t.string :agencyName
      t.datetime :visitDate1
      t.datetime :visitDate2
      t.datetime :visitDate3
      t.boolean :wholesomness
      t.integer :wholesomnessRate
      t.boolean :neighberhood
      t.integer :neighberhoodRate
      t.boolean :broker
      t.integer :brokerRate
      t.boolean :furniture
      t.string :furnitureRate
      t.boolean :bathrooms
      t.integer :bathrooms
      t.boolean :light
      t.integer :lightRate
      t.boolean :calm
      t.integer :calmRate
      t.boolean :electricty
      t.integer :electricityRate
      t.boolean :windowGlazing
      t.integer :windowGlazingRare
      t.boolean :pipework
      t.integer :pipeworkRate
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4

      t.timestamps null: false
    end
  end
end
