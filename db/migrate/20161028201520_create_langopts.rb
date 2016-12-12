class CreateLangopts < ActiveRecord::Migration
  def change
    create_table :langopts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
