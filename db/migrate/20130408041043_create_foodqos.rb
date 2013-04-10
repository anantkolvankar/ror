class CreateFoodqos < ActiveRecord::Migration
  def change
    create_table :foodqos do |t|
      t.string :name
      t.string :tast
      t.integer :rank

      t.timestamps
    end
  end
end
