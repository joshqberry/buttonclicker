class CreateRemoveTypoedTables < ActiveRecord::Migration
  def change
    create_table :remove_typoed_tables do |t|

      t.timestamps null: false
    end
  end
end
