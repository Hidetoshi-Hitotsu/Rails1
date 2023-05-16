class RenameEndColumnToSchedule < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :end, :end_date
  end
end
