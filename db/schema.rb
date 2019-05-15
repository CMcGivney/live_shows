 ActiveRecord::Schema.define(version: 2019_05_15_031553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shows", force: :cascade do |t|
    t.string "venue"
    t.string "band"
    t.string "genre"
    t.string "date"
    t.string "time"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
