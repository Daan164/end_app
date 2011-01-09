# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20110109123747) do
=======
ActiveRecord::Schema.define(:version => 20110108132918) do
>>>>>>> b4d81c813c26db3b8ded80fd2078154530156c3a

  create_table "aanwezighedens", :force => true do |t|
    t.string   "student_name"
    t.string   "aanwezig"
    t.string   "vak"
    t.date     "datum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "svaks", :force => true do |t|
    t.string   "name_student"
    t.string   "name_vak"
    t.integer  "aantal_punten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> b4d81c813c26db3b8ded80fd2078154530156c3a
  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "uvaks", :force => true do |t|
    t.string   "name_user"
    t.string   "name_vak"
    t.integer  "aantal_uren"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> b4d81c813c26db3b8ded80fd2078154530156c3a
  create_table "vaks", :force => true do |t|
    t.string   "name"
    t.string   "tot_punten"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
