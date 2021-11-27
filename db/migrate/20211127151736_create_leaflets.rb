class CreateLeaflets < ActiveRecord::Migration[6.0]
  def change
    create_table :leaflets do |t|

      t.timestamps
    end
  end
end
