class CreateHostSymptoms < ActiveRecord::Migration[5.2]
  def change
    create_table :host_symptoms do |t|
      t.references :host, foreign_key: true
      t.references :symptom, foreign_key: true

      t.timestamps
    end
  end
end
