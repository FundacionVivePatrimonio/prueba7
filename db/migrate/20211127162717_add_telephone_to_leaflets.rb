class AddTelephoneToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :telephone, :string
  end
end
