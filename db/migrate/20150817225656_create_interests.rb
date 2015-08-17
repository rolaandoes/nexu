class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :topic

      t.timestamps null: false
    end
  end
end
