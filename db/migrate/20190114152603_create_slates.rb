class CreateSlates < ActiveRecord::Migration[5.2]
  def change
    create_table :slates do |t|
      t.references :user, foreign_key: true
      t.references :lineup, foreign_key: true
      t.references :contest, foreign_key: true

      t.timestamps
    end
  end
end
