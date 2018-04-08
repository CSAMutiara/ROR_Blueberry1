class CreateTactivities < ActiveRecord::Migration[5.1]
  def change
    create_table :tactivities do |t|
      t.datetime :date
      t.string :name
      t.text :ta1
      t.text :ta2
      t.text :ta3
      t.text :ta4
      t.string :status

      t.timestamps
    end
  end
end
