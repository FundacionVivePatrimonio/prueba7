class AddEmailToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :email, :string
  end
end
