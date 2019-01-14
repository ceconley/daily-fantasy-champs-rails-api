class CreateLineups < ActiveRecord::Migration[5.2]
  def change
    create_table :lineups do |t|
      t.string :qb
      t.string :rb1
      t.string :rb2
      t.string :wr1
      t.string :wr2
      t.string :wr3
      t.string :te
      t.string :flex
      t.string :dst
      t.float :score

      t.timestamps
    end
  end
end
