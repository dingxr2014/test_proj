class CreatePunishes < ActiveRecord::Migration
  def change
    create_table :punishes do |t|
      t.string :name
      t.string :faults
      t.string :fault_date
      t.string :status
      t.string :complete_date

      t.timestamps
    end
  end
end
