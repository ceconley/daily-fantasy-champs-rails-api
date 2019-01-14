class CreateContests < ActiveRecord::Migration[5.2]
  def change
    create_table :contests do |t|
      t.string :name
      t.integer :entrants_total
      t.integer :entrants_current
      t.string :winner

      t.timestamps
    end
  end
end
