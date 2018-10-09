class CreateJobseekers < ActiveRecord::Migration[5.2]
  def change
    create_table :jobseekers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :degree, null: false
      t.string :university, null: false 
      t.decimal :cgpa, precision: 4, scale: 2, null: false
      t.string :location, null: false
      t.string :pref_size, null: false
      t.string :pref_hours, null: false
      t.string :we1, null: false
      t.string :we2, null: false
      t.string :we3, null: false
      t.integer :knowledge_score, null: false
      t.integer :skill_score, null: false
      t.integer :activity_score, null: false
      t.string :knowledge1, null:false
      t.string :knowledge2, null:false
      t.string :knowledge3, null:false
      t.string :skill1, null:false
      t.string :skill2, null:false
      t.string :skill3, null:false
      t.string :activity1, null:false
      t.string :activity2, null:false
      t.string :activity3, null:false
      t.timestamps
    end
  end
end
