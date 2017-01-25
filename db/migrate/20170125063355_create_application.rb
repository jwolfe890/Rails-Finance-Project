class CreateApplication < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.integer :applicant_id
      t.integer :job_id
      t.string :name
      t.integer :years_experience
      t.integer :salary_requirement
    end
  end
end
