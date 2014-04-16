class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :description
      t.decimal :price, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
