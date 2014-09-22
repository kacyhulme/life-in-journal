class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :entry_title
      t.datetime :entry_date
      t.timestamps
    end
  end
end
