class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :median_household_income
      t.integer :unemployed_population
      t.integer :population_in_metro_areas
      t.integer :percentage_with_high_school_degree

      t.timestamps
    end
  end
end
