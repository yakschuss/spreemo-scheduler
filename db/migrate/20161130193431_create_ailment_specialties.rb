class CreateAilmentSpecialties < ActiveRecord::Migration
  def change
    create_table :ailment_specialties do |t|
      t.integer :ailment_id, index: true
      t.integer :specialty_id, index: true

      t.timestamps
    end
  end
end
