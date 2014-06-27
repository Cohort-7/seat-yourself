class ChangeOpenAndCloseTimeToDatatypeTimeFromDateTime < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :restaurants do |t|
        dir.up   { t.change :open_time, :time }
        dir.down { t.change :open_time, :datetime }
        dir.up   { t.change :close_time, :time }
        dir.down { t.change :close_time, :datetime }
      end
    end
  end
end
