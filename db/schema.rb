ActiveRecord::Schema.define(version: 2021_12_23_031422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "state_abbreviations", force: :cascade do |t|
    t.string "state_name"
    t.string "abbrev"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "median_household_income"
    t.decimal "unemployed_population", precision: 9, scale: 2
    t.decimal "population_in_metro_areas", precision: 9, scale: 2
    t.decimal "percentage_with_high_school_degree", precision: 9, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "abbreviation"
  end

end
