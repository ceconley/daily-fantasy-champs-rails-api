class CreateSlates < ActiveRecord::Migration[5.2]
  def change
    create_table :slates do |t|

      t.timestamps
    end
  end
end
