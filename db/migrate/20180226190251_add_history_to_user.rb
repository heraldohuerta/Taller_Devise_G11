class AddHistoryToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :history, foreign_key: true
  end
end
