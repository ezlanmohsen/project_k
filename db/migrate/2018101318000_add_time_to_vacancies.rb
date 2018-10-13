class AddTimeToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :q1_time, :integer
    add_column :vacancies, :q2_time, :integer
    add_column :vacancies, :q3_time, :integer
    add_column :vacancies, :q4_time, :integer
    add_column :vacancies, :q5_time, :integer
  end
end