class MakeChangesToStates < ActiveRecord::Migration[6.1]
  def change
    change_column :states, :unemployed_population, :decimal, precision: 9, scale: 2
    change_column :states, :population_in_metro_areas, :decimal, precision: 9, scale: 2
    change_column :states, :percentage_with_high_school_degree, :decimal, precision: 9, scale: 2
  end
end
