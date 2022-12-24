class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :emp_email
      t.integer :mobile_number
      t.string :emp_country
      t.string :emp_state
      t.string :emp_city

      t.timestamps
    end
  end
end
