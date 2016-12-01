class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :specialty_name

      t.timestamps null: false
    end

    create_table :doctor_specialties do |t|
      t.integer :doctor_id, index: true
      t.integer :specialty_id, index: true

      t.timestamps
    end
  end
end
