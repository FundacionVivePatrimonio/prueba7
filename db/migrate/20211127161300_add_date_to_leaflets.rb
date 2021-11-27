class AddDateToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :date, :date
  end
end
