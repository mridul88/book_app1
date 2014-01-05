class CreatePeople < ActiveRecord::Migration
    def self.up
    create_table :people do |t|
      t.string :name, :constituency, :highest_degree, :image_path, :birth_place, :party_id
      t.boolean :sex
      t.date :birth_date 
      t.integer :no_criminal_case, :no_civil_case
      t.text :convicted_case, :accused_case, :resume, :details
      t.decimal :immovable_asset, :movable_asset, :liability, :precision => 15, :scale => 2
      t.timestamps
    end
    
  end
    
  
  def self.down
    drop_table :people
  end

end