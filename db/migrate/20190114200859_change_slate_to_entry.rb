class ChangeSlateToEntry < ActiveRecord::Migration[5.2]
  def change
    rename_table :slates, :entries
  end
end
