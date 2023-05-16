class CreateData < ActiveRecord::Migration[6.1]
  def change
    create_table :data do |t|
      t.string :title
      t.date :start
      t.date :end
      t.string :check

      t.timestamps
    end
  end
end
