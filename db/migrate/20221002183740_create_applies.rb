class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|
      t.string :name
      t.integer :tenthpercent
      t.integer :twelvepercent
      t.integer :ugpercent
      t.integer :pgpercent
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
