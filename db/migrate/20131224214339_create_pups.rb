class CreatePups < ActiveRecord::Migration
  def change
    create_table :pups do |t|
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
