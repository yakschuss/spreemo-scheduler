class CreatePatientAilments < ActiveRecord::Migration
  def change
    create_table :ailments do |t|
      t.string :ailment_name

      t.timestamps
    end

    create_table :patient_ailments do |t|
      t.integer :ailment_id, index: true
      t.integer :patient_id, index: true

      t.timestamps
    end
  end
end
