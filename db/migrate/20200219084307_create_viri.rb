class CreateViri < ActiveRecord::Migration[5.2]
  def change
    create_table :viri do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
