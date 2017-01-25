class CreateJob < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :manager_id
      t.string :name
      t.string :location 
      t.integer :salary
      t.integer :years_experience
      t.text :description
    end
  end
end
