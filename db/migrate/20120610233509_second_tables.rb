class SecondTables < ActiveRecord::Migration
  def up

    create_table :titles do |t|
      t.string    "value"
      t.datetime  "created_at"
      t.datetime  "updated_at"
    end

    create_table :descs do |d|
      d.string    "value"
      d.datetime  "created_at"
      d.datetime  "updated_at"
    end

    create_table :phrases do |p|
      p.string    "value"
      p.datetime  "created_at"
      p.datetime  "updated_at"
    end

  end

  def down
    drop_table :titles
    drop_table :descs
    drop_table :phrases
  end
end
