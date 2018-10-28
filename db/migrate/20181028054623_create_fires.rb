class CreateFires < ActiveRecord::Migration[5.1]
  def change
    create_table :fires do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :brightness
      t.integer :scan
      t.integer :track
      t.string :acq_date
      t.integer :acq_time
      t.string :satellite
      t.integer :confidence
      t.string :version
      t.integer :bright_t31
      t.integer :frp
      t.string :daynight
    end
  end
end
