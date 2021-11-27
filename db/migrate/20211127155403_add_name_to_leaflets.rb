class AddNameToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :name, :string
  end
end
