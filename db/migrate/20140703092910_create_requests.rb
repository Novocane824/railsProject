class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :location
      t.string :time
      t.string :date

      t.timestamps
    end
  end
end
