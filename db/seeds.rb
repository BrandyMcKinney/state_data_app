require "csv"

StateAbbreviation.delete_all
CSV.parse(File.read("lib/tasks/abbreviations.csv")).each_with_index do |line, index|
  next if index == 0 #or index.zero?

  StateAbbreviation.create!(
    state_name: line[0],
    abbrev: line[1],
    code: line[2],
  )
end

#.transform_keys(&:downcase).transform_keys(&:to_sym)
