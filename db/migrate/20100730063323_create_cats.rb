class CreateCats < ActiveRecord::Migration
  def self.up
    create_table :cats do |t|
      t.string :code
      t.string :name
      t.integer :gma_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cats
  end
end
