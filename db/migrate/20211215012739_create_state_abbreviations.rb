class CreateStateAbbreviations < ActiveRecord::Migration[6.1]
  def change
    create_table :state_abbreviations do |t|
      t.string :state_name
      t.string :abbrev
      t.string :code
      #null: false useful, prevents a blank field
      t.timestamps
    end
  end
end
