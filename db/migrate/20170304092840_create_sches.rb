class CreateSches < ActiveRecord::Migration
  def change
    create_table :sches do |t|
      t.string :title
      t.date :date

      t.timestamps null: false
    end
  end
end
