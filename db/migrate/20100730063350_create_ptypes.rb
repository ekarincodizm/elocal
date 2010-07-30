class CreatePtypes < ActiveRecord::Migration
  def self.up
    create_table :ptypes do |t|
      t.string :code
      t.string :name
      t.integer :gma_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ptypes
  end
end
