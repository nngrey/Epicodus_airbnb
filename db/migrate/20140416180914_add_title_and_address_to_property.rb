class AddTitleAndAddressToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :address, :string
    add_column :properties, :title, :string

  end
end
