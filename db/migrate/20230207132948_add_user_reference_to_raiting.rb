class AddUserReferenceToRaiting < ActiveRecord::Migration[6.0]
  def change
    add_reference :raitings, :user, foreign_key: true
  end
end
