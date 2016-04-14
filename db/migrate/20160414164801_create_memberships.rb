class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :player, index: true
      t.references :team, index: true
      t.datetime :leaves_at

      t.timestamps null: false
    end
    add_foreign_key :memberships, :players
    add_foreign_key :memberships, :teams
  end
end
