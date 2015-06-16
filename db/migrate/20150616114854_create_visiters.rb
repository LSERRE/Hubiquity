class CreateVisiters < ActiveRecord::Migration
  def change
    create_table :visiters do |t|

      t.timestamps null: false
    end
  end
end
