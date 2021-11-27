class AddExecutiveToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :executive, :string
  end
end
