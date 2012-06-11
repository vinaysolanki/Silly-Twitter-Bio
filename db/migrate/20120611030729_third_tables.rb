class ThirdTables < ActiveRecord::Migration
  def up
    create_table :bios do |p|
      p.string    "value"
      p.datetime  "created_at"
      p.datetime  "updated_at"
    end
  end

  def down
    drop_table :bios
  end
end
