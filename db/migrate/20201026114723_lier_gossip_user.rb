class LierGossipUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :gossips, :user, foreign_key: true
  end
end
