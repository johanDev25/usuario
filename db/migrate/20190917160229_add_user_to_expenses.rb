class AddUserToExpenses < ActiveRecord::Migration
  def change
    add_reference :expenses, :user, null: true, foreign_key: true
  end
end
