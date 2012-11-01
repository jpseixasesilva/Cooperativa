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

ActiveRecord::Schema.define(:version => 20121101233650) do

  create_table "cooperados", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "atribuicao"
    t.string   "salario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "presidentes", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "validade"
    t.string   "lote"
    t.string   "preco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regleites", :force => true do |t|
    t.integer  "presidente_id"
    t.integer  "cooperado_id"
    t.string   "qtdleite"
    t.string   "semana"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "regleites", ["cooperado_id"], :name => "index_regleites_on_cooperado_id"
  add_index "regleites", ["presidente_id"], :name => "index_regleites_on_presidente_id"

  create_table "transportes", :force => true do |t|
    t.string   "placa"
    t.string   "chassi"
    t.string   "cor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
