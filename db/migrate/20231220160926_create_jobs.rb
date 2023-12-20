class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      # t.<data type> :<attribute name>
      t.string :url
      t.string :employer_name
      t.string :employer_description
      t.string :job_title
      t.string :job_description
      t.integer :years_of_experience
      t.string :education_requirement
      t.string :industry
      t.integer :base_salary
      t.integer :employment_type_id




      t.timestamps
    end
  end
end
