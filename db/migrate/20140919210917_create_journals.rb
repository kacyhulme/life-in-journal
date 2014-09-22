class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :journal_title
      t.timestamps
    end
  end
end
