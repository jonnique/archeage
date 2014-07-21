class CreateMercs < ActiveRecord::Migration
  def change
    create_table :mercs do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
