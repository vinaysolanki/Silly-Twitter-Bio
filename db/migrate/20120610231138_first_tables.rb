class FirstTables < ActiveRecord::Migration
  def up
    create_table :roles do |r|
      r.string    "value"
      r.datetime  "created_at"
      r.datetime  "updated_at"
    end

  end

  def down
    drop_table :roles
  end
end
