class CreateParties < ActiveRecord::Migration
  def self.up
    create_table :parties do |t|
      t.string :name, :short_form, :type, :president, :symbol_image_path
      t.integer :no_mp
      t.text :details, :motto 
      t.timestamps
    end
  end
  
  def self.down
    drop_table :parties
  end
  
end
