class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.date :infected_on
      t.string :image_url
      t.references :virus, foreign_key: true

      t.timestamps
    end
  end
end
