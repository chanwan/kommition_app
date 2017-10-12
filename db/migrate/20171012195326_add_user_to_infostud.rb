class AddUserToInfostud < ActiveRecord::Migration[5.1]
  def change
    add_reference :infostuds, :user, foreign_key: true
  end
end
