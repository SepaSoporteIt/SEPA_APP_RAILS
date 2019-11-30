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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190425192839) do

  create_table "ambitos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autoridads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blazer_audits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "query_id"
    t.text     "statement",   limit: 65535
    t.string   "data_source"
    t.datetime "created_at"
    t.index ["query_id"], name: "index_blazer_audits_on_query_id", using: :btree
    t.index ["user_id"], name: "index_blazer_audits_on_user_id", using: :btree
  end

  create_table "blazer_checks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.integer  "query_id"
    t.string   "state"
    t.string   "schedule"
    t.text     "emails",         limit: 65535
    t.text     "slack_channels", limit: 65535
    t.string   "check_type"
    t.text     "message",        limit: 65535
    t.datetime "last_run_at"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["creator_id"], name: "index_blazer_checks_on_creator_id", using: :btree
    t.index ["query_id"], name: "index_blazer_checks_on_query_id", using: :btree
  end

  create_table "blazer_dashboard_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "dashboard_id"
    t.integer  "query_id"
    t.integer  "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["dashboard_id"], name: "index_blazer_dashboard_queries_on_dashboard_id", using: :btree
    t.index ["query_id"], name: "index_blazer_dashboard_queries_on_query_id", using: :btree
  end

  create_table "blazer_dashboards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["creator_id"], name: "index_blazer_dashboards_on_creator_id", using: :btree
  end

  create_table "blazer_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.string   "name"
    t.text     "description", limit: 65535
    t.text     "statement",   limit: 65535
    t.string   "data_source"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["creator_id"], name: "index_blazer_queries_on_creator_id", using: :btree
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "companyId"
    t.date     "fecha"
    t.date     "modificacion"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "industryTypeId"
    t.string  "industryTypeId2"
    t.integer  "employeeId"
    t.string   "name"
    t.string   "email"
    t.string   "addressDirection"
    t.string   "addressNumber"
    t.string   "floor"
    t.string   "departament"
    t.string   "cuit"
    t.string   "comment"
    t.boolean  "suscription"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "fantasy_name"
    t.string   "postal_code"
    t.string   "tlf"
    t.string   "internal_tlf"
    t.string   "contact"
    t.string   "companyType"
    t.string   "cellphone"
    t.integer  "solicitadorId"
    t.integer  "abitoId"
    t.integer  "autoridadId"
    t.string   "habpri"
    t.string   "habsec"
    t.integer  "legislacionId"
    t.integer  "visitqty_min"
    t.integer  "visitqty_max"
    t.integer  "frecuencyTypeId"
    t.integer   "localidad"
    t.integer   "partido"
  end

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "visitId"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "images_file_name"
    t.string   "images_content_type"
    t.integer  "images_file_size"
    t.datetime "images_updated_at"
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "tlf"
    t.boolean  "tipo"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "mat_number"
    t.string   "cuit"
    t.string   "addressDirection"
    t.string   "addressNumber"
    t.string   "floor"
    t.string   "departament"
    t.string   "degree"
    t.string   "localidad"
    t.string   "partido"
    t.string   "especializacion"
    t.string   "celular"
    t.string   "comentario"
  end

  create_table "frecuencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "days"
  end

  create_table "industry_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "ciiu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legislacions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordenes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "direccion"
    t.string   "numero"
    t.string   "localidad"
    t.integer  "localidad_id"
    t.integer  "industria_id"
    t.string   "contacto"
    t.integer  "contacto_id"
    t.string   "cuit"
    t.string   "celular"
    t.string   "email"
    t.string   "telefono"
    t.integer  "estatus_id"
    t.string   "prioridad"
    t.integer  "prioridad_id"
    t.date     "vencimiento"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "companyId"
    t.string   "external_id"
    t.string   "status"
  end

  create_table "solicitadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "visit_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "note"
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visit_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "aked_by"
    t.string   "ambit"
    t.string   "authority"
    t.string   "legislation"
    t.string   "observation"
    t.date     "aproval_budget_date"
    t.string   "budget_sent_date"
    t.string   "aproval_date"
    t.boolean  "print"
  end

  create_table "visits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "companyId"
    t.integer  "visitTypeId"
    t.integer  "frecuencyTypeId"
    t.integer  "employeeId"
    t.date     "nextVisit"
    t.date     "visitDate"
    t.boolean  "aproved"
    t.date     "aprovalDate"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "sent"
    t.string   "observation"
    t.date     "aproval_budget_date"
    t.string   "budget_sent_date"
    t.string   "aproval_date"
    t.boolean  "print"
    t.string   "state"
    t.string   "external_id"
    t.integer  "order_id"
  end

  create_table "studies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.string  "resolution"
    t.string  "legislation"
  end
  
  create_table "expirations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "companyId"
      t.integer "employeeId"
      t.integer "studyId"
      t.date "start_date"
      t.date "end_date"
      t.string "status"
      t.text "comments"
  end
  
  create_table "localidad_partidos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "localidad"
    t.string  "partido"
  end

  create_table "entities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "comments"
  end

 create_table "acts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "entityId"
    t.integer "companyId"
    t.integer "studyId"
    t.date "due_date"
    t.text "comments"
  end
 create_table "expirations_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "exírationId"
    t.integer "companyId"
    t.integer "stage"
    t.text "expirationcomment"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "statusexpirations ", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "statusDescription"
  end
end
