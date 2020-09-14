class AddQueueToNexty < ActiveRecord::Migration
  def change
    add_column :nexties, :singlesqueue, :string, array: true, default: [ ]
    add_column :nexties, :doublesqueue, :string, array: true, default: [ ]
  end
end
