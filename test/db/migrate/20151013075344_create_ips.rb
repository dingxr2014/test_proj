class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :user
      t.string :ip
      t.text :description

      t.timestamps
    end
  end
end
