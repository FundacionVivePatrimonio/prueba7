class AddConversationToLeaflets < ActiveRecord::Migration[6.0]
  def change
    add_column :leaflets, :conversation, :string
  end
end
