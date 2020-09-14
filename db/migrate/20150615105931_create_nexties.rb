class CreateNexties < ActiveRecord::Migration
  def change
    create_table :nexties do |t|
      t.timestamps null: false
    end
  end
end
