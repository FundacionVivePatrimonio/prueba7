class AddStatusToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :status, :boolean
  end
end
