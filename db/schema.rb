# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20170621101606) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "sub_heading"
    t.date     "date"
    t.string   "slug"
    t.boolean  "display_home", :default => false
  end

  add_index "articles", ["slug"], :name => "index_articles_on_slug"

  create_table "awards", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "position"
    t.boolean  "diaplay",        :default => true
    t.boolean  "display_footer", :default => true
    t.boolean  "display",        :default => true
  end

  create_table "case_studies", :force => true do |t|
    t.integer  "client_id"
    t.text     "content"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "position"
    t.boolean  "display",    :default => true
  end

  create_table "chronicler_documents", :force => true do |t|
    t.string   "name"
    t.string   "document"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chronicler_images", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "client_images", :force => true do |t|
    t.integer  "client_id"
    t.string   "name"
    t.string   "image"
    t.boolean  "display",      :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "position",     :default => 0
    t.boolean  "display_home"
  end

  add_index "client_images", ["client_id"], :name => "index_client_images_on_client_id"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "logo"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "client_images_count", :default => 0
    t.integer  "position",            :default => 0
    t.boolean  "gallery_display"
  end

  create_table "community_articles", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "summary"
    t.text     "content"
    t.string   "image"
    t.string   "sub_heading"
    t.date     "date",        :null => false
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "home_banners", :force => true do |t|
    t.string   "caption"
    t.string   "image"
    t.integer  "position"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "home_features", :force => true do |t|
    t.string   "caption"
    t.string   "link"
    t.string   "image"
    t.integer  "position"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "home_pages", :force => true do |t|
    t.text     "content"
    t.string   "image"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "name"
    t.boolean  "display",    :default => false
    t.string   "image_link"
  end

  create_table "manticore_administrators", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "role"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_send_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "layout"
    t.string   "style"
    t.string   "title"
    t.string   "image"
    t.text     "content"
    t.string   "slug"
    t.boolean  "display",    :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "image_2"
    t.string   "link"
    t.string   "link_2"
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "position",   :default => 0
  end

  create_table "seo_entries", :force => true do |t|
    t.string   "nominal_url"
    t.string   "title"
    t.text     "meta_description"
    t.text     "meta_tags"
    t.boolean  "in_sitemap",       :default => true
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "team_members", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "testimonials", :force => true do |t|
    t.text     "quote"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "willow_branches", :force => true do |t|
    t.string  "tree"
    t.string  "name"
    t.integer "position",              :default => 0
    t.string  "ancestry"
    t.integer "ancestry_depth",        :default => 0
    t.string  "positions_depth_cache"
    t.integer "leaf_id"
    t.string  "leaf_type"
    t.boolean "sturdy",                :default => false
    t.boolean "can_have_children",     :default => false
    t.boolean "primary",               :default => false
    t.string  "access_key"
  end

  add_index "willow_branches", ["ancestry"], :name => "index_willow_branches_on_ancestry"

  create_table "willow_leaves", :force => true do |t|
    t.string "name"
    t.string "route"
    t.string "type"
  end

end
