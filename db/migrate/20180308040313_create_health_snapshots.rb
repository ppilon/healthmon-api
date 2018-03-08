class CreateHealthSnapshots < ActiveRecord::Migration[5.1]
  def change
    create_table :health_snapshots do |t|
      t.float :value
      t.string :source_name
      t.string :snapshot_type
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :unit
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
