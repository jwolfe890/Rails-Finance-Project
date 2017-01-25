class CreateJobNote < ActiveRecord::Migration[5.0]
  def change
    create_table :job_notes do |t|
      t.integer :job_id
      t.integer :
      t.text :content
    end
  end
end
