class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.datetime :time
      t.integer :rule_id
      t.integer :level
      t.string :user
      t.string :srcip
      t.string :description
      t.string :location
      t.text :msg

      t.timestamps
    end
  end
end
