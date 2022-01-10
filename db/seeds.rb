require "csv"

StateAbbreviation.delete_all                                        #read docs on header converters
CSV.parse(File.read("lib/tasks/abbreviations.csv"), headers: true, header_converters: [:downcase, :symbol]).each do |line|
  StateAbbreviation.create!(
    state_name: line[:state],
    abbrev: line[:abbrev],
    code: line[:code],
  )
end
State.delete_all
CSV.parse(File.read("lib/tasks/state_data.csv"), headers: true).each do |line|
  State.create!(
    name: line["state"],
    median_household_income: line["median_household_income"],
    unemployed_population: line["share_unemployed_seasonal"],
    population_in_metro_areas: line["share_population_in_metro_areas"],
    percentage_with_high_school_degree: line["share_population_with_high_school_degree"],
  )
end
